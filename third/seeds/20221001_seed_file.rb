Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    puts 'Start truncate for all models'
    DB[:applies].truncate(cascade: true, restart: true)
    DB[:geeks].truncate(cascade: true, restart: true)
    DB[:jobs].truncate(cascade: true, restart: true)
    DB[:companies].truncate(cascade: true, restart: true)
    puts 'Models truncated'
    puts 'Start to write models'
    DB[:companies].insert(name: "Мегаафон", location: "Санкт-Петербург")
    DB[:companies].insert(name: "Билайн", location: "Москва")
    DB[:companies].insert(name: "Тинькофф", location: "Казань")

    DB[:jobs].insert(name: "Фронт", place: "Москва", company_id: 1)
    DB[:jobs].insert(name: "Бекендер", place: "Москва", company_id: 2)
    DB[:jobs].insert(name: "Уборщик", place: "Москва", company_id: 3)
    DB[:jobs].insert(name: "Сисадмин", place: "Москва", company_id: 3)

    DB[:geeks].insert(name: "Иван", stack: "123", resume: "1111")
    DB[:geeks].insert(name: "Андрей", stack: "123", resume: "1111")
    DB[:geeks].insert(name: "Анна", stack: "123", resume: "1111")

    DB[:applies].insert(job_id: 1, geek_id: 1)
    DB[:applies].insert(job_id: 1, geek_id: 2)
    DB[:applies].insert(job_id: 2, geek_id: 2)

    puts 'Models seeded'
  end
end
