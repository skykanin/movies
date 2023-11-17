package qwikk.spring.movies.repo

import jakarta.persistence.EntityManager
import jakarta.persistence.PersistenceContext
import jakarta.persistence.criteria.Predicate
import org.springframework.stereotype.Repository
import qwikk.spring.movies.model.Actor
import qwikk.spring.movies.model.Genre
import qwikk.spring.movies.model.Movie

@Repository
class MovieRepoCustomImpl : MovieRepoCustom {

    @PersistenceContext
    lateinit var entityManager: EntityManager

    override fun findByCustomQuery(title: String?, genreList: List<String>?, actorList: List<String>?, sort: String?,
                                   page: Int, size: Int): List<Movie> {

        val cb = entityManager.criteriaBuilder
        val query = cb.createQuery(Movie::class.java)
        val root = query.from(Movie::class.java)
        val predicates = mutableListOf<Predicate>()

        if (genreList != null) {
            val subQuery = query.subquery(Movie::class.java)
            val subRoot = subQuery.from(Movie::class.java)
            val subGenreJoin = subRoot.join<Movie, Genre>("genre")

            val genrePredicate: Predicate = subGenreJoin.get<String>("name").`in`(genreList)

            subQuery.select(subRoot)
            subQuery.where(genrePredicate)
            subQuery.groupBy(subRoot)
            subQuery.having(cb.greaterThanOrEqualTo(cb.count(subGenreJoin), genreList.size.toLong()))

            predicates.add(root.`in`(subQuery))
        }

        if (actorList != null) {
            val subQuery = query.subquery(Movie::class.java)
            val subRoot = subQuery.from(Movie::class.java)
            val subActorJoin = subRoot.join<Movie, Actor>("starring")

            val actorPredicate: Predicate = subActorJoin.get<String>("name").`in`(actorList)

            subQuery.select(subRoot)
            subQuery.where(actorPredicate)
            subQuery.groupBy(subRoot)
            subQuery.having(cb.greaterThanOrEqualTo(cb.count(subActorJoin), actorList.size.toLong()))

            predicates.add(root.`in`(subQuery))
        }


        if (title != null) {
            predicates.add(cb.like(cb.lower(root.get("seriesTitle")), "%${title.lowercase()}%"))
        }

        query.select(root)
        query.where(*predicates.toTypedArray())
        when (sort) {
            "imdbRating" -> query.orderBy(cb.desc(root.get<Double>(sort)))
            "noOfVotes", "metaScore", "releasedYear" -> query.orderBy(cb.desc(root.get<Int>(sort)))
        }


        val typedQuery = entityManager.createQuery(query)
        typedQuery.setFirstResult(page * size)
        typedQuery.setMaxResults(size)

        return typedQuery.resultList
    }
}