import './App.css';
import { useState, useEffect } from 'react';
import {Routes, Route, Navigate} from "react-router-dom";
import Home from './components/home/Home';
import Header from './components/header/Header';

function App() {

  const [movies, setMovies] = useState([])

  useEffect(() => {
    fetch("http://192.168.1.71:8080/api/movies/dbmovies/all")
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
        <Route path="/" element={<Navigate replace to="/home"/>}/>
        <Route path="/home" element={<Home movies={movies.slice(0, 10)}/>} />
      </Routes>

    </div>
  );
}

export default App;
