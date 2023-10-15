import React from 'react'
import './Hero.css';
import Carousel from 'react-material-ui-carousel';
import { Paper } from '@mui/material';

const Hero = ({movies}) => {
  return (
    <div className='movie-carousel-container'>
        <h1 className='custom-header'>Top Rated Movies</h1>
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
                                                <p>{movie.genre}</p>
                                            </div>
                                            <div className='movie-rating'>
                                                <h4>{movie.imdbRating} / 10</h4>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </Paper>
                    )
                })
            }
        </Carousel>
    </div>
  )
}

export default Hero