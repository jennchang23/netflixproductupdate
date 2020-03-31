-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/f6vk9c
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "netflix_titles" (
    "show_id" INTEGER   NOT NULL,
    "type" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "director" VARCHAR   NOT NULL,
    "cast" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "date_added" DATE   NOT NULL,
    "release_year" INTEGER   NOT NULL,
    "rating" VARCHAR   NOT NULL,
    "duration" VARCHAR   NOT NULL,
    -- Rename 'Genre'
    "listed_in" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    -- New Column
    "title_release_year" VARCHAR   NOT NULL,
    CONSTRAINT "pk_netflix_titles" PRIMARY KEY (
        "title_release_year"
     )
);

CREATE TABLE "rotten_tomatoes_movies" (
    "rotten_tomatoes_link" VARCHAR   NOT NULL,
    "movie_title" VARCHAR   NOT NULL,
    -- Rename to 'RT_release_year'
    "in_theaters_date" DATE   NOT NULL,
    "tomatometer_rating" INTEGER   NOT NULL,
    "tomatometer_status" VARCHAR   NOT NULL,
    "audience_rating" INTEGER   NOT NULL,
    "audience_status" VARCHAR   NOT NULL,
    -- New Column
    "title_release_year" varchar   NOT NULL
);

ALTER TABLE "rotten_tomatoes_movies" ADD CONSTRAINT "fk_rotten_tomatoes_movies_title_release_year" FOREIGN KEY("title_release_year")
REFERENCES "netflix_titles" ("title_release_year");

