import type { Component } from "solid-js";
import { Show } from "solid-js";
import type { Movie } from "../../types";

import "./MovieCard.css"

const circleCss = (half: number, radius: number, strokeWidth: number, fill: string) =>
      Object({
        cx: `${half}px`,
        cy: `${half}px`,
        r: `${radius}px`,
        fill: fill,
        "stroke-width": `${strokeWidth}px`
      })

const svgCss = (size: number) =>
      Object({
        display: "block",
        transform: "rotate(-90deg)",
        width: `${size}px`,
        height: `${size}px`,
      })

type CircleIndicatorProps = {
  style: {size: number, strokeWidth: number, offsetX: number, offsetY: number, ringColor: string}
  progress: number
}

const CircleIndicator: Component<CircleIndicatorProps> = (props) => {
  const { size, strokeWidth, offsetX, offsetY, ringColor } = props.style;
  const center = size / 2 ;
  const radius = center - strokeWidth;
  const circleStyle = circleCss(center, radius, strokeWidth, "transparent");
  const arcLength = 2 * Math.PI * radius;
  const arcOffset =  arcLength * ((100 - (props.progress * 10))/100)
  return (
    <div style={{position: "relative",
                 "margin-bottom": `${offsetY}px`,
                 "margin-right": `${offsetX}px`}}
    >
      <span>
        <svg style={svgCss(size)}>
          <circle style={circleCss(center, radius, strokeWidth, "#111")} />
          <circle style={{...circleStyle, stroke: "#ddd"}} />
          <circle style={{...circleStyle,
                            stroke: ringColor,
                            "stroke-dasharray": `${arcLength}px`,
                            "stroke-dashoffset": `${arcOffset}px`}}
          />
        </svg>
      </span>
    <div class="circle-text">
      <div>{props.progress * 10}</div>
      </div>
    </div>
  )
}

type MovieCardProps = {
  loading: boolean,
  movie?: Movie
}

const MovieCard: Component<MovieCardProps> = (props) =>
  (
    <Show when={props.movie} fallback={<div>Loading...</div>}>
    { (movie) =>
    <div class="movie-card">
      <CircleIndicator
        style={{size: 55, strokeWidth: 4, offsetX: -105, offsetY: -73, ringColor: "#0F1"}}
        progress={movie().imdbRating}/>
      <img src={movie().posterLink}/>
     <div class="movie-info">
        <span>{movie().seriesTitle}</span>
        <br/>
        <span class="release-year">{movie().releasedYear}</span>
      </div>
    </div>}
    </Show>
  )

export default MovieCard;
