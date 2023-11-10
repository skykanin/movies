package qwikk.spring.movies.repo

import qwikk.spring.movies.model.Movie

interface MovieRepoCustom {
    fun findByCustomQuery(title: String?, genre: List<String>?, page: Int, size: Int): List<Movie>
}