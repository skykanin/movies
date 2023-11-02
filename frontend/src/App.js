import './App.css';
import {Routes, Route, Navigate} from "react-router-dom";
import Home from './components/home/Home';
import Header from './components/header/Header';
import MoviePage from './components/moviepage/MoviePage';
import Browse from './components/browse/Browse';

function App() {

  return (
    <div className="App">
      <Header/>
      <Routes>
        <Route path="" element={<Navigate replace to="home"/>}/>
        <Route path="home" element={<Home />} />
        <Route path="movie/:id" element={<MoviePage />} />
        <Route path="browse" element={<Browse />} />
      </Routes>

    </div>
  );
}

export default App;
