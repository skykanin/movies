import MovieCard from "../moviecard/MovieCard"
import { useEffect, useState } from "react"
import { Link } from "react-router-dom"

const Browse = () => {

    const [movies, setMovies] = useState([])
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        fetch("http://192.168.1.71:8080/api/movies/top10")
        .then(response => response.json())
        .then(data => {
          console.log(data)
          setMovies(data)
        }).finally( () =>{
            setLoading(false)
        })
      }, [])


    if (loading) {
        return <h1>LOADING...</h1>
    }

    return (
    <div class="container">
        <div class="row row-cols-3">
        {movies.map((movie) => {
                        return(
                            <Link key ={movie.movieID} to = {"/movie/"+movie.movieID} style = {{ textDecoration: 'none' }}>
                                <MovieCard movie={movie}/>
                            </Link>
                        )
                    })}
        </div>
    </div>
    )
}

export default Browse