import React from 'react'
import './Hero.css';
import Carousel from 'react-material-ui-carousel';
import { Paper } from '@mui/material';

const Hero = ({movies}) => {
  return (
    <div className='movie-carousel-container'>
        <h1>Top 10 rated movies</h1>
        <Carousel autoPlay={false} swipe={false} navButtonsAlwaysVisible={true} duration={0}>
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