import React, { useState, useEffect } from 'react'
import { useParams } from 'react-router-dom';

const MoviePage = () => {

    const { id } = useParams()
    const [movie, setMovie] = useState()
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        fetch("http://192.168.1.71:8080/api/movies/id/"+id)
        .then(response => response.json())
        .then(data => {
          console.log(data)
          setMovie(data)
        }).finally( () =>{
            setLoading(false)
        })
    }, [])

    if (loading) {
        return <h1>LOADING...</h1>
    }

    return (
    <div>
        <img src={movie.posterLink} alt=''/> <h1>{movie.seriesTitle}</h1>
    </div>
    )
}

export default MoviePage