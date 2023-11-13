import MovieCard from "../moviecard/MovieCard"
import { useEffect, useState } from "react"
import Grid from '@mui/material/Unstable_Grid2';
import "./Browse.css"
import { useParams } from "react-router-dom";
import { Button, CircularProgress } from "@mui/material";

const Browse = () => {

    const { url = "" } = useParams()
    const [movies, setMovies] = useState([])
    const [page, setPage] = useState(0)
    const [loading, setLoading] = useState(true)
    const pageSize = "size=18"

    const fetchData = async () => {
      const response = await fetch(`http://localhost:8080/api/movies/filter?page=${page}&${pageSize}${url}`)
      const data = await response.json()
      setMovies([...movies, ...data])
      setPage(page+1)
    }

    useEffect(() => {
        console.log(url)
        fetchData().finally(setLoading(false))
      }, [] )


    if (loading) {
        return <CircularProgress />
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
        <Button
            style={{width: "100px", height: "100%", 
            background: "rgb(3, 50, 80)",
            color: "white",
            padding: "10px",
            marginTop: "20px"}}
            variant='contained' 
            disableElevation
            onClick={fetchData}>Next
        </Button>
      </div>
    )
}

export default Browse