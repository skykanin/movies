import type { Component } from 'solid-js'
import { lazy } from 'solid-js'
import { Router, Routes, Route } from '@solidjs/router'

import NavBar from './components/navbar/NavBar'
import Home from './routes/Home'

const Search = lazy(() => import('./routes/Search'))

import './App.css'

const App: Component = () =>
  (
    <Router>
      <NavBar/>
      <Routes>
        <Route path="/" component={Home}/>
        <Route path="/search" component={Search}/>
      </Routes>
    </Router>
  )

export default App
