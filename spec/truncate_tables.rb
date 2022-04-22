require 'pg'

def truncate_tables
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec('TRUNCATE TABLE users, properties, availabilities;')
end