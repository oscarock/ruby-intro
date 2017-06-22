DATABASE_NAME = 'sqlite-database-carros'
require 'sqlite3'
require 'faker'

connection = SQLite3::Database.new "#{DATABASE_NAME}.db"

connection.execute("drop table if exists carros;")

connection.execute(<<-SQL
  create table carros
  (
  	id  integer
    marca  varchar(255),
    placa varchar(255),
    num_pasajeros int,
    fecha_creado date
  );
  SQL
)

puts "-"*50
print "inserting some data ... "

# connection.execute(<<-SQL
#   insert into carros
#   values ('mazda', 'ERT123', '4', '2017-06-22 10:05:25 -0500');
#   SQL
# )

10.times do
	num_pasajeros = rand(4)
	fecha_creado = Time.new

  # data = Faker::Name.marca, Faker::Name.tipo, Faker::Name.num_pasajeros,Faker::Name.fecha_creado
  # labels = %w[fname lname company]
  # fake_data = Hash[labels.map(&:to_sym).zip data.map{|d| d.gsub("'", "''")}]

  # Otra forma de hacerlo,
  faker_registros = Faker::Vehicle.manufacture.gsub("'", "''"),
                    Faker::Vehicle.vin.gsub("'", "''")
               # Faker::Name.num_pasajeros.gsub("'", "''"),
               # Faker::Name.fecha_creado.gsub("'", "''")

  connection.execute(<<-SQL
    insert into carros (marca, placa, num_pasajeros, fecha_creado)
    values ('#{faker_registros[0]}','#{faker_registros[1]}', '#{num_pasajeros}', '#{fecha_creado}');
  SQL
  )
end

puts "done."
