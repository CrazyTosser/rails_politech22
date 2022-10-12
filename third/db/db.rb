DB = Sequel.connect(
  adapter: :postgres,
  database: 'sinatra_seq_devs',
  host: 'localhost',
  password: 'password',
  user: 'sinatra_admin',
  max_connections: 10,
# logger: Logger.new('log/db.log')
  )
