require("rspec")
require("pg")
require("list")
require("task")

DB = PG.connect({:dbname => "to_do_test"})


RSpec.configure do |config|
  config.after(:each) do
    DB.exec("TRUNCATE lists, tasks *;")
  end
end
