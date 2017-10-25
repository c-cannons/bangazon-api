# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171020165222) do

  create_table "computers", force: :cascade do |t|
    t.string "computer_brand", limit: 10, null: false
    t.string "computer_model", limit: 10, null: false
    t.datetime "purchase_date", null: false
    t.datetime "decomm_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_first_name", limit: 10, null: false
    t.string "customer_last_name", limit: 20, null: false
    t.datetime "customer_acct_date", null: false
    t.boolean "customer_active", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "dept_name", limit: 20, null: false
    t.decimal "budget", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_computers", force: :cascade do |t|
    t.integer "computers_id", null: false
    t.integer "employees_id", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computers_id"], name: "index_employee_computers_on_computers_id"
    t.index ["employees_id"], name: "index_employee_computers_on_employees_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_first_name", limit: 10, null: false
    t.string "employee_last_name", limit: 20, null: false
    t.string "employee_title", limit: 20, null: false
    t.boolean "is_supervisor", default: false, null: false
    t.integer "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "products_id", null: false
    t.integer "orders_id", null: false
    t.float "discount"
    t.decimal "ext_price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orders_id"], name: "index_order_details_on_orders_id"
    t.index ["products_id"], name: "index_order_details_on_products_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customers_id", null: false
    t.integer "pay_methods_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customers_id"], name: "index_orders_on_customers_id"
    t.index ["pay_methods_id"], name: "index_orders_on_pay_methods_id"
  end

  create_table "pay_methods", force: :cascade do |t|
    t.string "payment_type", limit: 15, null: false
    t.integer "account_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string "product_type_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name", limit: 20, null: false
    t.float "product_price", null: false
    t.string "product_description", limit: 50, null: false
    t.integer "product_types_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_types_id"], name: "index_products_on_product_types_id"
  end

  create_table "training_classes", force: :cascade do |t|
    t.string "class_name", limit: 20, null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.integer "max_seats", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "training_seats", force: :cascade do |t|
    t.integer "training_classes_id", null: false
    t.integer "employees_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employees_id"], name: "index_training_seats_on_employees_id"
    t.index ["training_classes_id"], name: "index_training_seats_on_training_classes_id"
  end

end
