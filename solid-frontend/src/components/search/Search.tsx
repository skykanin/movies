import type { Component } from 'solid-js'
import { createResource, createSignal, For, Show } from 'solid-js'

import style from './Search.module.css'

// Label compoenent for displaying selected Genres
const Label: Component<{ name: string, onClick: () => Set<string>}> = (props) => {
  return (
    <span class={style.label} onClick={props.onClick}>{props.name}</span>
  )
}

const Search: Component = () => {
  const [genres, setGenres] = createSignal<Set<string>>(new Set([]));

  const addGenre = (genre: string) => setGenres(oldGenres =>
    oldGenres.size !== 3 ? new Set([...oldGenres, genre]) : oldGenres
  )

  const removeGenre = (genre: string) => setGenres(oldGenres => {
    let newGenres = new Set(oldGenres);
    newGenres.delete(genre);
    return newGenres;
  })

  const [genreOptions] = createResource<Array<string>>(() =>
    fetch("http://localhost:8080/api/movies/genre/all")
      .then(res => res.json())
  )

  return (
    <div class={style.form_container}>
      <form>
        <label>
          <input class={style.search} type="search" placeholder="Movie"/>
          <input class={style.search_submit} type="submit" value="Search"/>
        </label>
        <select class={style.select} name="genres" id="genre-select"
                onChange={e => {addGenre(e.target.value); e.target.selectedIndex = 0;}}>
          <option value="" selected disabled>Select Genres</option>
          <Show when={!genreOptions.loading} fallback={<div>Loading...</div>}>
            <For each={genreOptions()}>
              {genre=> <option value={genre}>{genre}</option>}
            </For>
          </Show>
        </select>
      </form>
      <div class={style.label_container}>
        <For each={Array.from(genres())}>
          {genre => <Label name={genre} onClick={() => removeGenre(genre)}/>
          }
        </For>
      </div>
    </div>
  )
}

export default Search;
