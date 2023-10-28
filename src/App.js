import './App.css';
import { useState, useEffect } from 'react';
import {Routes, Route, Navigate} from "react-router-dom";
import Home from './components/home/Home';
import Header from './components/header/Header';

function App() {

  return (
    <div className="App">
      <Header/>
      <Routes>
        <Route path="/" element={<Navigate replace to="/home"/>}/>
        <Route path="/home" element={<Home />} />
      </Routes>

    </div>
  );
}

export default App;
