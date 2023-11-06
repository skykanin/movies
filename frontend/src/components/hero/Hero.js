import React, { useState, useEffect } from 'react'
import './Hero.css';
import { Link } from 'react-router-dom';
import Carousel from 'react-material-ui-carousel';
import { Paper } from '@mui/material';

const Hero = () => {

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
        <div className='movie-carousel-container'>
            <h2 className='custom-header'>Top Rated Movies</h2>
            <Carousel autoPlay={true}
            swipe={false}
            navButtonsAlwaysVisible={true}
            duration={200}
            stopAutoPlayOnHover={true}
            interval={7000}
            animation='fade'>
                {
                    movies.map((movie) => {
                        return(
                            <Link key ={movie.movieID} to = {"/movie/"+movie.movieID} style = {{ textDecoration: 'none' }}>
                            <Paper>
                                <div className='movie-card-container'>
                                    <div className='movie-card'>
                                        <div className='movie-detail'>
                                            <div className='movie-poster-container'>
                                                <div className='movie-poster'>
                                                    <img src={movie.posterLink} alt=''/>
                                                </div>
                                            </div>
                                            <div className='movie-text-container'>
                                                <div className='movie-title'>
                                                    <h4>{movie.seriesTitle}</h4>
                                                </div>
                                                <div className='movie-description'>
                                                    <p>{movie.overview}</p>
                                                </div>
                                                <div className='movie-description'>
                                                    <p>{movie.genre.map((x) => x.name).join(", ")}</p>
                                                </div>
                                                <div className='movie-rating'>
                                                    <h4>{movie.imdbRating} / 10</h4>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </Paper>
                            </Link>
                        )
                    })
                }
            </Carousel>
        </div>
    )
}

export default Hero