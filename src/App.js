import './App.css';
import { useState, useEffect } from 'react';
import { Layout } from './components/Layout';
import {Routes, Route} from "react-router-dom";
import Home from './components/home/Home';
import Header from './components/header/Header';

function App() {

  const [movies, setMovies] = useState([])

  useEffect(() => {
    fetch("http://localhost:8080/api/movies/dbmovies/all")
    .then(response => response.json())
    .then(data => {
      console.log(data)
      setMovies(data)
    })
  }, [])

  return (
    <div className="App">
      <Header/>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route path="/" element={<Home movies={movies.slice(0, 10)}/>} />

        </Route>
      </Routes>

    </div>
  );
}

export default App;
