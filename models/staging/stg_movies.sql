select movie_id, 
    COALESCE(movie_title, 'Unknown') as movie_title,
    COALESCE(genre,'Unknown' ) as genre,
    COALESCE(studio,'Unknown') as studio
from {{ source('SILVERSCREEN', 'movies') }}
