-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/iKZpzP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "top_rest" (
    "rest_no" varchar(40)   NOT NULL,
    "NYC_score_avg" int   NOT NULL,
    "LA_score_avg" int   NOT NULL,
    "Austin_score_avg" int   NOT NULL,
    "Total_count" int   NOT NULL,
    CONSTRAINT "pk_top_rest" PRIMARY KEY (
        "rest_no"
     )
);

CREATE TABLE "NYC_data" (
    "ID" int   NOT NULL,
    "rest_name" varchar(100)   NOT NULL,
    "rest_no" varchar(40)   NOT NULL,
    "score" int   NOT NULL,
    CONSTRAINT "pk_NYC_data" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "LA_data" (
    "ID" int   NOT NULL,
    "rest_name" varchar(100)   NOT NULL,
    "rest_no" varchar(40)   NOT NULL,
    "score" int   NOT NULL,
    CONSTRAINT "pk_LA_data" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Austin_data" (
    "ID" int   NOT NULL,
    "rest_name" varchar(100)   NOT NULL,
    "rest_no" varchar(40)   NOT NULL,
    "score" int   NOT NULL,
    CONSTRAINT "pk_Austin_data" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "NYC_data" ADD CONSTRAINT "fk_NYC_data_rest_no" FOREIGN KEY("rest_no")
REFERENCES "top_rest" ("rest_no");

ALTER TABLE "LA_data" ADD CONSTRAINT "fk_LA_data_rest_no" FOREIGN KEY("rest_no")
REFERENCES "top_rest" ("rest_no");

ALTER TABLE "Austin_data" ADD CONSTRAINT "fk_Austin_data_rest_no" FOREIGN KEY("rest_no")
REFERENCES "top_rest" ("rest_no");

