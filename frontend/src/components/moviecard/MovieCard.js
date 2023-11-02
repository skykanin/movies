import React from 'react'

const MovieCard = ({movie}) => {
    return (
        <div class="card mb-3" style={{maxWidth: "540px", background: "rgb(24, 26, 27)", borderColor: "rgb(16, 16, 16)"}}>
            <div class="row g-0">
                <div class="col-md-4">
                    <img src={movie.posterLink} class="img-fluid rounded-start" alt="..."/>
                </div>
                <div class="col-md-8">
                    <div class="card-body" style={{color: "rgb(200, 200, 200)"}}>
                        <h6 class="card-title">{movie.seriesTitle}</h6>
                        <p class="card-text"><small>{movie.overview}</small></p>
                        <p class="card-text">{movie.imdbRating} / 10</p>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default MovieCard