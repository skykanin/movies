import React from 'react'
import Hero from '../hero/Hero'
import SearchBar from '../searchbar/SearchBar'
import Welcome from '../welcome/Welcome'

const Home = () => {
  return (
    <div>
      <Welcome />
      <SearchBar />
      <Hero />
    </div>
  )
}

export default Home