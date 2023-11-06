import NavBar from "./components/navbar/NavBar";
import Home from "./routes/Home";
import "./App.css";
import type { Component } from "solid-js";

const App: Component = () =>
  (
    <>
      <NavBar/>
      <Home />
    </>
  );

export default App;
