

# Silverscreen

## Project Overview and Objectives:

A major Entertainment Company,  acquired a small theater chain in New Jersey called Silver Screen, which operates only three locations.

Management wants to analyze how efficient these theaters are, especially the relationship between movie rental costs and the revenue generated.

My objective is to build a monthly performance table that combines:

Movie details (title, genre, studio),
Location information,
Rental costs,
Tickets sold and 
Revenue generated

This table will allow management to better understand profitability per movie and per location.
Data Sources

## Data Sources:
Silver Screen provided 5 datasets from different systems (and formats):

movie_catalogue → detailed information about movies (id, title, genre, studio).

invoices → rental costs for each movie, by location and month.

nj_001 → transactions from Location #1.

nj_002 → daily sales data from Location #2.

nj_003 → purchases from Location #3 (tickets, snacks, drinks)

## dbt Cloud Structure and Model Execution

The project was developed in dbt Cloud with the following structure:

Staging models (stg_) → clean and standardize raw data from each source.

Intermediate models (int_) → unify sales data from the three locations and merge with movie & invoice information.

Mart models (mart_) → final business-ready tables, including the consolidated Cost-Revenue Monthly Summary.

## Lineage Diagram and Key Transformations

Key transformations include:

Cleaning movie catalogue (movies) (ensuring consistent titles, genres, and studios) and claenning and replacing empty values trough all the tables.

Aggregating ticket sales at the monthly level for each theater.

Merging invoices (rental cost) with ticket sales (revenue).

Creating the final mart table:

movie_id, movie_title, genre, studio, month, location, rental_cost, tickets_sold, revenue


## Testing:

Schema tests ( not null).


## Automation:

dbt Cloud Jobs run on schedule, executing:

dbt run 
dbt test
dbt docs generate
