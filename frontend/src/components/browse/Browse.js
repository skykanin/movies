import MovieCard from "../moviecard/MovieCard"
import { useEffect, useState } from "react"
import { Link } from "react-router-dom"
import Grid from '@mui/material/Unstable_Grid2';
import "./Browse.css"

const Browse = () => {

    const [movies, setMovies] = useState([])
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        fetch("http://localhost:8080/api/movies/top10/rated")
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
      <div className="center-container">
      <div className="grid-container">
        <Grid container spacing={{ xs: 2, md: 2 }} columns={{ xs: 4, sm: 12, md: 12 }}>
          {movies.map(movie => (
            <Grid xs={1} sm={3} md={2} key={movie.movieID}>
              <MovieCard movie={movie}/>
            </Grid>
          ))}
        </Grid>
      </div>
      </div>
    )
}

export default Browse