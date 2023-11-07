package qwikk.spring.movies.repo

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import qwikk.spring.movies.model.Genre
import qwikk.spring.movies.model.Movie

interface MovieRepository : JpaRepository<Movie, Long> {

    fun findAllByOrderByImdbRatingDesc(): List<Movie>
    @Query("FROM Movie m WHERE m.seriesTitle ILIKE :pattern")
    fun findBySeriesTitle(pattern:String): List<Movie>

    @Query("FROM Movie m JOIN m.genre g WHERE g.name IN :genres GROUP BY m HAVING COUNT(g) >= :genreCount")
    fun findMoviesWithGenres(genres: List<String>, genreCount: Int): List<Movie>

    @Query("FROM Movie ORDER BY imdbRating DESC LIMIT 10")
    fun findTop10Rated(): List<Movie>

    @Query("FROM Movie ORDER BY noOfVotes DESC LIMIT 10")
    fun findTop10Popular(): List<Movie>
}