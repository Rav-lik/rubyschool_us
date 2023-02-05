def get_db
  @db = SQLite3::Database.new 'barbarshop.db'
  @db.execute 'CREATE TABLE IF NOT EXISTS
      "Users"
      (
        "id"INTEGER UNIQUE,
        "name"TEXT,
        "phone"TEXT,
        "date_stamp"TEXT,
        "barber"TEXT,
        "color"TEXT,
        PRIMARY KEY("id" AUTOINCREMENT)
      );
    CREATE TABLE IF NOT EXISTS
      "Barber"
      (
        "id"INTEGER UNIQUE,
        "name"TEXT UNIQUE,
        PRIMARY KEY("id" AUTOINCREMENT)
      );
    INSERT OR IGNORE INTO Barber (name) VALUES ("Gus Fring");
    INSERT OR IGNORE INTO Barber (name) VALUES ("Walter White");
    INSERT OR IGNORE INTO Barber (name) VALUES ("Jessie Pinkman");'
end