# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[Company.table_name, Job.table_name, Geek.table_name, Apply.table_name].each do |table|
  ActiveRecord::Base.connection.execute("truncate table #{table} restart identity;")
end

Company.create!([
                  {name: "Мегаафон", location: "Санкт-Петербург"},
                  {name: "Билайн", location: "Москва"},
                  {name: "Тинькофф", location: "Казань"}
                ])
Job.create!([
              {name: "Фронт", place: "Москва", company_id: Company.find_by_name("Мегаафон").id},
              {name: "Бекендер", place: "Москва", company_id: Company.find_by_name("Билайн").id},
              {name: "Уборщик", place: "Москва", company_id: Company.find_by_name("Тинькофф").id},
              {name: "Сисадмин", place: "Москва", company_id: Company.find_by_name("Тинькофф").id},
            ])
Geek.create!([
               {name: "Иван", stack: "123", resume: "1111"},
               {name: "Андрей", stack: "123", resume: "1111"},
               {name: "Анна", stack: "123", resume: "1111"},
             ])
Apply.create!([
                {job_id: 1, geek_id: 1},
                {job_id: 1, geek_id: 2},
                {job_id: 2, geek_id: 2}
              ])