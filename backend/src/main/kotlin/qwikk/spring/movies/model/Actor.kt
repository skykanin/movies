package qwikk.spring.movies.model

import jakarta.persistence.*

@Entity
@Table(name = "actor")
class Actor (
    @Column(name = "actorid")
    @Id
    var actorID: Int = -1,

    @Column(name = "name")
    var name: String = ""
) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as Actor

        if (actorID != other.actorID) return false
        if (name != other.name) return false

        return true
    }

    override fun hashCode(): Int {
        var result = actorID
        result = 31 * result + name.hashCode()
        return result
    }
}