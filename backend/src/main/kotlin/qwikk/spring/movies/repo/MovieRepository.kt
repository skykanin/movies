package qwikk.spring.movies.repo

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import qwikk.spring.movies.model.Movie

interface MovieRepository : JpaRepository<Movie, Long> {

    fun findAllByOrderByImdbRatingDesc(): List<Movie>
    fun findBySeriesTitle(seriesTitle:String): List<Movie>

    fun findByGenreName(name: String): List<Movie>

    @Query("FROM Movie ORDER BY imdbRating DESC LIMIT 10")
    fun findTop10Rated(): List<Movie>

    @Query("FROM Movie ORDER BY noOfVotes DESC LIMIT 10")
    fun findTop10Popular(): List<Movie>
}