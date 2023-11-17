package qwikk.spring.movies.model

import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import jakarta.persistence.*
import qwikk.spring.movies.service.GrossConverter


@Entity
@Table(name = "movies")
class Movie(
    @Id
    var movieID: Int = -1,

    @Column(name = "poster_link")
    var posterLink:String = "",

    @Column(name = "series_title")
    val seriesTitle:String = "",
    @Column(name = "released_year")
    val releasedYear:Int = -1,

    val certificate:String = "",
    val runtime:String = "",

    @ManyToMany
    @JoinTable(
        name = "movie_genre",
        joinColumns = [JoinColumn(name = "movieid")],
        inverseJoinColumns = [JoinColumn(name = "genreid")])
    val genre:Set<Genre> = emptySet(),

    @ManyToMany
    @JoinTable(
        name = "movie_actor",
        joinColumns = [JoinColumn(name = "movieid")],
        inverseJoinColumns = [JoinColumn(name = "actorid")])
    val starring: Set<Actor> = emptySet(),

    @Column(name = "imdb_rating")
    val imdbRating:Double = -1.0,

    val overview:String = "",

    @Column(name = "meta_score")
    val metaScore:Int? = -1,

    val director:String = "",

    @Column(name = "no_of_votes")
    val noOfVotes:Int = -1,

    @Convert(converter = GrossConverter::class)
    val gross:String = "",
) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as Movie

        return movieID == other.movieID
    }

    override fun hashCode(): Int {
        return movieID
    }
}