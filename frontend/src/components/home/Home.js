import React from 'react'
import SearchBar from '../searchbar/SearchBar'
import Welcome from '../welcome/Welcome'
import MovieRow from '../movierow/MovieRow'

const Home = () => {
  return (
    <div>
      <Welcome />
      <SearchBar />
      <MovieRow url="movies/top10/rated" title={"Top Rated"}/>
      <MovieRow url="movies/top10/popular" title={"Popular"}/>
    </div>
  )
}

export default Home