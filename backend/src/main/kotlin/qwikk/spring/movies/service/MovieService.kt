package qwikk.spring.movies.service

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import qwikk.spring.movies.model.Movie
import qwikk.spring.movies.repo.GenreRepository
import qwikk.spring.movies.repo.MovieRepository

@Service
class MovieService {

    @Autowired
    lateinit var movieRepository: MovieRepository
    @Autowired
    lateinit var genreRepository : GenreRepository

    fun findByCustomQuery(title: String?, genre: List<String>?, actor: List<String>?,
        sort: String?, page: String, size: String): List<Movie> {
        return movieRepository.findByCustomQuery(title, genre, actor, sort, page.toInt(), size.toInt())
    }

    fun findTop10Rated() = movieRepository.findTop10Rated()
    fun findTop10Popular() = movieRepository.findTop10Popular()
    fun findMovieId(id: Long): Movie = movieRepository.findById(id).orElseThrow {
        NoSuchElementException("Movie ID:$id not found!")
    }
    fun findAllGenres() = genreRepository.findAllGenres()
}