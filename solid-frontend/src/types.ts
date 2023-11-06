export type Genre = {
    genreID: number;
    name: string;
};

export type Movie = {
    movieID: number;
    posterLink: string;
    seriesTitle: string;
    releasedYear: number;
    certificate: string;
    runtime: string;
    genre: Genre[];
    imdbRating: number;
    overview: string;
    metaScore: number;
    director: string;
    star1: string;
    star2: string;
    star3: string;
    star4: string;
    noOfVotes: number;
    gross: string;
};
