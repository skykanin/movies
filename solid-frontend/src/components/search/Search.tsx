import type { Component } from 'solid-js'
import { createResource, createSignal, For, Show } from 'solid-js'
import { useNavigate } from '@solidjs/router'
import { queryGenres } from '../../lib/api'

import style from './Search.module.css'

// Label compoenent for displaying selected Genres
const Label: Component<{ name: string, onClick: () => Set<string>}> = (props) => {
  return (
    <span class={style.label} onClick={props.onClick}>{props.name}</span>
  )
}

const Search: Component = () => {
  const navigate = useNavigate();
  const [genres, setGenres] = createSignal<Set<string>>(new Set([]));
  const [title, setTitle] = createSignal<string>()

  const addGenre = (genre: string) => setGenres(oldGenres =>
    oldGenres.size !== 3 ? new Set([...oldGenres, genre]) : oldGenres
  )

  const removeGenre = (genre: string) => setGenres(oldGenres => {
    let newGenres = new Set(oldGenres);
    newGenres.delete(genre);
    return newGenres;
  })

  const [genreOptions] = createResource(queryGenres)

  const submit = (e: Event) => {
    e.preventDefault
    const params = Object({limit: '20'})
    if (genres().size > 0) params.genres = [...genres()].toString()
    if (title()) params.title = title()

    const searchParams = new URLSearchParams(params)
    navigate(`/search?${searchParams}`)
  }

  return (
    <div class={style.form_container}>
      <form onSubmit={e => submit(e)}>
        <label>
    <input class={style.search} onInput={e => setTitle(e.target.value)}
      type="search" placeholder="Movie"/>
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
