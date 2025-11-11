CREATE TABLE IF NOT EXISTS MOVIES(
    MID TEXT PRIMARY KEY,
    NAME TEXT,
    YEAR TEXT,
    LANGUAGE TEXT
    );
    INSERT INTO MOVIES VALUES
    ("M101","Sitaram","2015","Malyalam"),
    ("M102","Shersha","2023","Hindi"),
    ("M103","Dies Irae","2025","Malayalam"),
    ("M104","Cold Case","2023","Malayalam"),
    ("M105","Anjam Pathira","2017","Malayalam");

CREATE TABLE IF NOT EXISTS GENRE(
    GID TEXT PRIMARY KEY,
    GNAME TEXT
    );
    INSERT INTO GENRE VALUES
    ("M101","ROMANCE"),
    ("M102","SENTIMENTAL"),
    ("M103","ACTION"),
    ("M104","HORROR"),
    ("M105","THRILLER");

CREATE TABLE IF NOT EXISTS IMDB(
    MOVIENAME TEXT,
    GENRE TEXT,
    IMDB_RATING DECIMAL(2,1)
    );
    INSERT INTO IMDB VALUES
    ("Sitaram","ROMANCE","9.5"),
    ("Shersha","SENTIMENTAL","9.0"),
    ("Dies Irae","ACTION","8.5"),
    ("Cold Case","HORROR","8.0"),
    ("Anjam Pathira","THRILLER","10.0"),
    ("Aneballa","HORROR","7.5"),
    ("QUALB","ROMANCE","7.0");
    -- GENRE OF MOVIES RELEASED IN A PARTICULAR YEAR
    SELECT M.YEAR,I.GENRE
    FROM MOVIES M JOIN IMDB I ON M.NAME=I.movieName
    WHERE M.YEAR='2025';
