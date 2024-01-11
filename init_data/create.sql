 CREATE TABLE users (
    userID SERIAL PRIMARY KEY,
    fullName VARCHAR(40),
    username VARCHAR(40),
    password CHAR(60),
    email VARCHAR(40)
);

CREATE TABLE tournaments (
    tournamentID SERIAL PRIMARY KEY,
    name VARCHAR(40),
    description VARCHAR(5000),
    adminUserID INTEGER,
    FOREIGN KEY (adminUserID) REFERENCES users(userID)
);

CREATE TABLE users_to_tournaments (
    userID INTEGER,
    tournamentID INTEGER,
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (tournamentID) REFERENCES tournaments(tournamentID)
);