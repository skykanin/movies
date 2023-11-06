import React from 'react'
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import { CardActionArea } from '@mui/material';
import { Link } from 'react-router-dom';

const MovieCard = ({movie}) => {
    return (
        <Card sx={{ maxWidth: 200}}>
          <CardActionArea component={Link} to={`/movie/${movie.movieID}`}>
            <CardMedia
              component="img"
              image={movie.posterLink}
              alt="Movie Poster"
              sx={{objectFit: "contain"}}
            />
            <CardContent>
                <Typography variant="body2">
                    {movie.seriesTitle}
                </Typography>
                <Typography gutterBottom variant="body2" component="div" sx={{marginTop: "10px"}}>
                    {movie.releasedYear}
                </Typography>
            </CardContent>
          </CardActionArea>
        </Card>
      );
}

export default MovieCard