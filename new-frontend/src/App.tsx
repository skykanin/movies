import MoviePage from "./components/moviepage/MoviePage";
import solidLogo from "./assets/solid.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import type { JSX } from "solid-js";

function App(): JSX.Element {
  return (
    <>
      <MoviePage />
      <div>
        <a href="https://vitejs.dev" target="_blank" >
          <img src={viteLogo} class="logo" alt="Vite logo" />
        </a>
        <a href="https://solidjs.com" target="_blank" >
          <img src={solidLogo} class="logo solid" alt="Solid logo" />
        </a>
      </div>
      <h1 > Vite + Solid = ❤️</h1>
      <p class="read-the-docs" >
        Click on the Vite and Solid logos to learn more
      </p>
    </>
  );
}

export default App;
