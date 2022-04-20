require 'pg'

def persisted_data(table:, id:)
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec_params("SELECT * FROM #{table} WHERE id = $1", [id])
end
