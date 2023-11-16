package qwikk.spring.movies.repo

import qwikk.spring.movies.model.Movie

interface MovieRepoCustom {
    fun findByCustomQuery(title: String?, genreList: List<String>?, actorList: List<String>?, page: Int, size: Int): List<Movie>
}