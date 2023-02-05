CREATE TABLE IF NOT EXISTS "Users" (
"id"INTEGER UNIQUE,
"name"TEXT,
"phone"TEXT,
"date_stamp"TEXT,
"barber"TEXT,
"color"TEXT,
PRIMARY KEY("id" AUTOINCREMENT)
);
