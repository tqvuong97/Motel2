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

ActiveRecord::Schema.define(version: 2018_10_02_150530) do

  create_table "areas", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nameArea", null: false
    t.integer "floor", null: false
  end

  create_table "devices", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nameDevice", null: false
    t.string "branchDevice", null: false
    t.integer "quantity", null: false
    t.string "statusDevice", null: false
    t.date "dayPurchase", null: false
    t.integer "costDevice", null: false
    t.integer "room_id", null: false
    t.index ["room_id"], name: "Device_Room"
  end

  create_table "guests", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fullName", null: false
    t.integer "idCard", null: false
    t.string "sex", limit: 10, null: false
    t.string "job", null: false
    t.string "address", null: false
    t.string "phoneNumber", limit: 20, null: false
    t.string "image", null: false
    t.integer "statusGuest", null: false
    t.integer "user_id", null: false
    t.integer "room_id", null: false
    t.index ["room_id"], name: "Guest_Room"
  end

  create_table "paymentmanagements", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "dayPM", null: false
    t.integer "guest_id", null: false
    t.integer "service_id", null: false
    t.integer "room_id", null: false
    t.integer "electricity", null: false
    t.integer "internet", null: false
    t.integer "water", null: false
    t.integer "roomPrice", null: false
    t.integer "debt", null: false
    t.index ["guest_id"], name: "PaymentManagement_Guest"
    t.index ["room_id"], name: "PaymentManagement_Room"
    t.index ["service_id"], name: "PaymentManagement_Service"
  end

  create_table "pricelists", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "price", null: false
    t.integer "area_id", null: false
    t.index ["area_id"], name: "PriceList_Area"
  end

  create_table "roomcheckouts", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "dayRco", null: false
    t.text "note", null: false
    t.integer "guest_id", null: false
    t.index ["guest_id"], name: "RoomCheckOut_Guest"
  end

  create_table "roomrentalmanagers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "dayRent", null: false
    t.string "statusRent", null: false
    t.integer "deposit", null: false
    t.integer "guest_id", null: false
    t.index ["guest_id"], name: "RoomRentalManager_Guest"
  end

  create_table "rooms", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nameRoom", null: false
    t.integer "maxSlot", null: false
    t.string "statusRoom", null: false
    t.integer "numOfPeople", null: false
    t.integer "area_id", null: false
    t.index ["area_id"], name: "Room_Area"
  end

  create_table "services", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nameService", null: false
    t.string "unit", null: false
    t.integer "unitPrice", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "devices", "rooms", name: "Device_Room"
  add_foreign_key "guests", "rooms", name: "Guest_Room"
  add_foreign_key "paymentmanagements", "guests", name: "PaymentManagement_Guest"
  add_foreign_key "paymentmanagements", "rooms", name: "PaymentManagement_Room"
  add_foreign_key "paymentmanagements", "services", name: "PaymentManagement_Service"
  add_foreign_key "pricelists", "areas", name: "PriceList_Area"
  add_foreign_key "roomcheckouts", "guests", name: "RoomCheckOut_Guest"
  add_foreign_key "roomrentalmanagers", "guests", name: "RoomRentalManager_Guest"
  add_foreign_key "rooms", "areas", name: "Room_Area"
end
