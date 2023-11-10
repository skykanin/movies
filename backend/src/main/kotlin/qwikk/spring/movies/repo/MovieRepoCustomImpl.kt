package qwikk.spring.movies.repo

import jakarta.persistence.EntityManager
import jakarta.persistence.PersistenceContext
import jakarta.persistence.criteria.Join
import jakarta.persistence.criteria.Predicate
import org.springframework.stereotype.Repository
import qwikk.spring.movies.model.Genre
import qwikk.spring.movies.model.Movie

@Repository
class MovieRepoCustomImpl : MovieRepoCustom {

    @PersistenceContext
    lateinit var entityManager: EntityManager

    override fun findByCustomQuery(title: String?, genre: String?, page: Int, size: Int): List<Movie> {
        val cb = entityManager.criteriaBuilder
        val query = cb.createQuery(Movie::class.java)
        val root = query.from(Movie::class.java)
        val predicates = mutableListOf<Predicate>()

        if (genre != null) {
            val genreList = genre.split(",")
            val genreJoin: Join<Movie, Genre>  = root.join("genre")

            val genrePredicate: Predicate = genreJoin.get<String>("name").`in`(genreList)

            query.groupBy(root)
            query.having(cb.greaterThanOrEqualTo(cb.count(genreJoin), genreList.size.toLong()))

            predicates.add(genrePredicate)
        }


        if (title != null) {
            predicates.add(cb.like(root.get("seriesTitle"), "%$title%"))
        }

        query.select(root)
        query.where(*predicates.toTypedArray())


        val typedQuery = entityManager.createQuery(query)
        typedQuery.setFirstResult(page * size)
        typedQuery.setMaxResults(size)

        return typedQuery.resultList
    }
}