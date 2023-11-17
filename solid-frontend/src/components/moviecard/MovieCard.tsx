import type { Component } from 'solid-js'
import { Show } from 'solid-js'
import type { Movie } from '../../types'

import style from './MovieCard.module.css'

const circleCss = (
  half: number,
  radius: number,
  strokeWidth: number,
  fill: string
): {
  cx: string
  cy: string
  r: string
  'stroke-width': string
  fill: string
} =>
  Object({
    cx: `${half}px`,
    cy: `${half}px`,
    r: `${radius}px`,
    'stroke-width': `${strokeWidth}px`,
    fill
  })

const svgCss = (size: number): {
  display: string
  transform: string
  width: string
  height: string
} =>
  Object({
    display: 'block',
    transform: 'rotate(-90deg)',
    width: `${size}px`,
    height: `${size}px`
  })

interface CircleProgressProps {
  style: {
    size: number
    strokeWidth: number
    offsetX: number
    offsetY: number
  }
  progress: number
}

const between = (lower: number, upper: number, num: number): boolean =>
  num >= lower && num <= upper

const CircleProgress: Component<CircleProgressProps> = (props) => {
  const { size, strokeWidth, offsetX, offsetY } = props.style
  const center = size / 2
  const radius = center - strokeWidth
  const circleStyle = circleCss(center, radius, strokeWidth, 'transparent')
  const arcLength = 2 * Math.PI * radius
  const arcOffset = arcLength * (100 - props.progress * 10) / 100
  const progressColor = between(7, 10, props.progress) ? '#0F1' :
    between(4, 7, props.progress) ? '#FFA500' : '#F00'
  return (
    <div
      style={{
        position: 'absolute',
        display: 'inline-flex',
        'top': `${offsetY}px`,
        'left': `${offsetX}px`,
      }}
    >
      <span>
        <svg style={svgCss(size)}>
          <circle style={circleCss(center, radius, strokeWidth, '#111')} />
          <circle style={{ ...circleStyle, stroke: '#ddd' }} />
          <circle
            style={{
              ...circleStyle,
              stroke: progressColor,
              'stroke-dasharray': `${arcLength}px`,
              'stroke-dashoffset': `${arcOffset}px`
            }}
          />
        </svg>
      </span>
    <div class={style.circle_text}>
        <div>{props.progress * 10}</div>
      </div>
    </div>
  )
}

interface MovieCardProps {
  movie?: Movie
}

const MovieCard: Component<MovieCardProps> = (props) => (
  <Show when={props.movie} fallback={<div>Loading...</div>}>
    {(movie) => (
      <div class={style.movie_card}>
        <div class={style.poster}>
          <CircleProgress
            style={{
              size: 40,
              strokeWidth: 3,
              offsetX: 115,
              offsetY: 3
            }}
            progress={movie().imdbRating}
          />
        <img class={style.image} src={movie().posterLink} />
        </div>
        <div class={style.movie_info}>
          <span>{movie().seriesTitle}</span>
          <br />
        <span class={style.release_year}>{movie().releasedYear}</span>
        </div>
      </div>
    )}
  </Show>
)

export default MovieCard
