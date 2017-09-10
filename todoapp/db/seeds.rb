# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([{title: 'Семья'}])
Todo.create(text:'Купить молоко', isCompleted:false, project: Project.find(1))
Todo.create(text:'Заменить масло в двигателе до 23 апреля', isCompleted:false, project: Project.find(1))
Todo.create(text:'Отправить письмо бабушке', isCompleted:false, project: Project.find(1))
Todo.create(text:'Заплатить за квартиру', isCompleted:false, project: Project.find(1))
Todo.create(text:'Забрать обувь из ремонта', isCompleted:false, project: Project.find(1))
projects = Project.create([{title: 'Работа'}])
Todo.create(text:'Позвонить заказчику', isCompleted:false, project: Project.find(2))
Todo.create(text:'Отправить документы', isCompleted:false, project: Project.find(2))
Todo.create(text:'Заполнить отчет', isCompleted:false, project: Project.find(2))
projects = Project.create([{title: 'Прочее'}])
Todo.create(text:'Позвонить другу', isCompleted:false, project: Project.find(3))
Todo.create(text:'Подготовиться к поездке', isCompleted:false, project: Project.find(3))

