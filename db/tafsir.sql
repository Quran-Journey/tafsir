
DROP TABLE IF EXISTS Tafsir CASCADE;
CREATE TABLE IF NOT EXISTS Tafsir (
    tafsir_id SERIAL PRIMARY KEY,
    content TEXT NOT NULL,
    book TEXT NOT NULL
);

DROP TABLE IF EXISTS Mufasir CASCADE;
CREATE TABLE IF NOT EXISTS Mufasir (
    mufasir_id SERIAL PRIMARY KEY,
    mufasir_name INT NOT NULL,
    death DATETIME NOT NULL
)

DROP TABLE IF EXISTS Book CASCADE;
CREATE TABLE IF NOT EXISTS Tafsir (
    book_id SERIAL PRIMARY KEY,
    author TEXT NOT NULL,
    title TEXT NOT NULL,
    FOREIGN KEY (author)
        REFERENCES Mufasir(mufasir_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

DROP TABLE IF EXISTS MufasirTafsir CASCADE;
CREATE TABLE IF NOT EXISTS MufasirTafsir (
    mufasir INT,
    tafsir INT,
    FOREIGN KEY (mufasir)
        REFERENCES Mufasir(mufasir_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (tafsir)
        REFERENCES Tafsir(tafsir_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
