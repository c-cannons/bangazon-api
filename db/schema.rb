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
    t.integer "computer_id", null: false
    t.integer "employee_id", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_employee_computers_on_computer_id"
    t.index ["employee_id"], name: "index_employee_computers_on_employee_id"
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
    t.integer "product_id", null: false
    t.integer "order_id", null: false
    t.float "discount"
    t.decimal "ext_price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "pay_method_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["pay_method_id"], name: "index_orders_on_pay_method_id"
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
    t.integer "product_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_type_id"], name: "index_products_on_product_type_id"
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
    t.integer "training_class_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_training_seats_on_employee_id"
    t.index ["training_class_id"], name: "index_training_seats_on_training_class_id"
  end

end
