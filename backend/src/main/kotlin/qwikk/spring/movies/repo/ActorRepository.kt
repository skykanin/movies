package qwikk.spring.movies.repo

import org.springframework.data.jpa.repository.JpaRepository
import qwikk.spring.movies.model.Actor

interface ActorRepository: JpaRepository<Actor, Long> {
}