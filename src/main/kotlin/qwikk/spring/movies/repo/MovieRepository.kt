package qwikk.spring.movies.repo

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param
import qwikk.spring.movies.model.Movie

interface MovieRepository : JpaRepository<Movie, Long> {

    fun findAllByOrderByImdbRatingDesc() : Iterable<Movie>
    fun findBySeriesTitle(seriesTitle:String) : Iterable<Movie>

    @Query("FROM Movie WHERE genre LIKE '%' || :genre || '%'")
    fun findByGenreContains(@Param("genre") genre:String) : List<Movie>
}