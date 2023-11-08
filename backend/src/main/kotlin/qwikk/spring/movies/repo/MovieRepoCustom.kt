package qwikk.spring.movies.repo

import qwikk.spring.movies.model.Movie

interface MovieRepoCustom {
    fun findByCustomQuery(title: String?, genre: String?): List<Movie>
}