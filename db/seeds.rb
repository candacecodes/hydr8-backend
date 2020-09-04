# create_table "users", force: :cascade do |t|
#     t.string "name"
#     t.integer "age"
#     t.string "gender"
#     t.integer "watergoal"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "water_cups", force: :cascade do |t|
#     t.integer "amount"
#     t.integer "user_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

  user1 = User.create(name: "name1", age: "1", gender: "male", watergoal: "8")

  water1 = WaterCup.create(amount: "2", user_id: 1)
  water2 = WaterCup.create(amount: "1", user_id: 1)

  puts 'seeds done'