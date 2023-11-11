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

    override fun findByCustomQuery(title: String?, genre: List<String>?, page: Int, size: Int): List<Movie> {
        val cb = entityManager.criteriaBuilder
        val query = cb.createQuery(Movie::class.java)
        val root = query.from(Movie::class.java)
        val predicates = mutableListOf<Predicate>()

        if (genre != null) {
            val subQuery = query.subquery(Movie::class.java)
            val subRoot = subQuery.from(Movie::class.java)
            val subGenreJoin = subRoot.join<Movie, Genre>("genre")

            val genrePredicate: Predicate = subGenreJoin.get<String>("name").`in`(genre)

            subQuery.select(subRoot)
            subQuery.where(genrePredicate)
            subQuery.groupBy(subRoot)
            subQuery.having(cb.greaterThanOrEqualTo(cb.count(subGenreJoin), genre.size.toLong()))

            predicates.add(root.`in`(subQuery))
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