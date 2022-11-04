CREATE INDEX FOR (a:Actor) ON (a.name, a.born);
CREATE CONSTRAINT ON (movie:Movie) ASSERT movie.title IS UNIQUE;
