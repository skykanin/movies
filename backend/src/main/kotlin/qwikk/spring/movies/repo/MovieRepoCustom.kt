package qwikk.spring.movies.repo

import qwikk.spring.movies.model.Movie

interface MovieRepoCustom {
    fun findByCustomQuery(title: String?, genreList: List<String>?, actorList: List<String>?,
                          director: String?, sort: String?,
                          page: Int, size: Int): List<Movie>
}