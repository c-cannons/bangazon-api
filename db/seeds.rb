# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all
Product.destroy_all
PayMethod.destroy_all
Order.destroy_all
ProductType.destroy_all
Employee.destroy_all
# Department.destroy_all
Computer.destroy_all
TrainingClass.destroy_all

10.times do
  Customer.create([{
      customer_first_name: Faker::Name.first_name,
      customer_last_name: Faker::Name.last_name,
      customer_acct_date: Faker::Date.between(2.years.ago, Date.today),
      customer_active: true
  }])
end

5.times do
  Product.create([{
    product_name: Faker::Pokemon.name,
    product_price: Faker::Number.decimal(2),
    product_description: Faker::RickAndMorty.quote,
    product_type_id: Faker::Number.number(5)
  }])
end

  # PayMethod.create([{
  #   payment_type: Faker::Business.credit_card_type,
  #   account_number: Faker::Business.credit_card_number
  # }])

  # Order.create([{
  #   customer_id: Faker::Number.number(2),
  #   pay_method_id: Faker::Number.number(2)
  # }])

  # ProductType.create([{
  #   product_type_name: Faker::Beer.name
  # }])
# 5.times do
#   Department.create([{
#     dept_name: Faker::Job.field,
#     budget: Faker::Number.decimal(2)
#   }])
# end

20.times do
  Employee.create([{
    employee_first_name: Faker::Name.first_name,
    employee_last_name: Faker::Name.last_name,
    employee_title: Faker::Job.title,
    is_supervisor: true,
    department: Department.find(rand(46..50))
  }])
end


  # Computer.create([{
  #   purchase_date: Faker::Date.between(2.years.ago, Date.today),
  #   decomm_date: Faker::Date.between(2.years.ago, Date.today)
  # }])

5.times do
  TrainingClass.create([{
    class_name: Faker::Educator.course,
    start_date: Faker::Date.between(2.years.ago, Date.today),
    end_date: Faker::Date.between(2.years.ago, Date.today),
    max_seats: Faker::Number.number(2)
  }])
end
