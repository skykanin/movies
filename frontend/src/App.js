import './App.css';
import {Routes, Route, Navigate} from "react-router-dom";
import Home from './components/home/Home';
import Header from './components/header/Header';
import MoviePage from './components/moviepage/MoviePage';

function App() {

  return (
    <div className="App">
      <Header/>
      <Routes>
        <Route path="" element={<Navigate replace to="home"/>}/>
        <Route path="home" element={<Home />} />
        <Route path="movie/:id" element={<MoviePage />} />
      </Routes>

    </div>
  );
}

export default App;
