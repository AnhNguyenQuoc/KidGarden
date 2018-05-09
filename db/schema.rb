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

ActiveRecord::Schema.define(version: 20180509063053) do

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "leader"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.integer "province_id"
    t.string "name"
    t.index ["province_id"], name: "index_districts_on_province_id"
  end

  create_table "employments", force: :cascade do |t|
    t.string "hoten"
    t.datetime "ngaysinh"
    t.boolean "gioitinh"
    t.string "tengoikhac"
    t.integer "sohieucongchuc"
    t.integer "cmnd"
    t.datetime "ngaycapcmnd"
    t.string "noicapcmnd"
    t.string "tenxeptkb"
    t.string "dantoc"
    t.string "tongiao"
    t.string "quoctich"
    t.string "noisinh"
    t.string "diachithuongtru"
    t.string "noiohiennay"
    t.integer "dtcoquan"
    t.integer "dtnharieng"
    t.integer "dtdd"
    t.string "email"
    t.boolean "tinhtranghonnhan"
    t.string "thanhphanxuatthan"
    t.string "dienuutiengd"
    t.string "dienuutienbanthan"
    t.string "nangkieu"
    t.string "suckhoe"
    t.string "nhommau"
    t.integer "chieucao"
    t.integer "cannang"
    t.string "khuyettan"
    t.string "stk"
    t.string "nganhangmotaikhoan"
    t.datetime "ngaybatdaudongbhxh"
    t.string "sobhxh"
    t.datetime "ngayhopdong"
    t.datetime "ngaytuyendung"
    t.string "hethongtuyendung"
    t.string "coquantuyendung"
    t.datetime "ngayvecoquanhiennay"
    t.string "thuocloaicanbo"
    t.string "nhomcvhiennay"
    t.boolean "dangnghibhxh"
    t.datetime "ngayvaonganhgd"
    t.string "chucvuhientai"
    t.float "hesophucap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.integer "province_id"
    t.integer "district_id"
    t.index ["department_id"], name: "index_employments_on_department_id"
    t.index ["district_id"], name: "index_employments_on_district_id"
    t.index ["province_id"], name: "index_employments_on_province_id"
  end

  create_table "khoanphiphaithus", force: :cascade do |t|
    t.string "tendichvu"
    t.decimal "phidichvu"
    t.string "loaidichvu"
    t.boolean "kieudichvu"
    t.string "hinhthuc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lop_id"
    t.index ["lop_id"], name: "index_khoanphiphaithus_on_lop_id"
  end

  create_table "lops", force: :cascade do |t|
    t.string "khoihoc"
    t.string "lophoc"
    t.integer "syso"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "namhoc"
    t.index ["department_id"], name: "index_lops_on_department_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phanconggiangdays", force: :cascade do |t|
    t.integer "lop_id"
    t.integer "employment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employment_id"], name: "index_phanconggiangdays_on_employment_id"
    t.index ["lop_id"], name: "index_phanconggiangdays_on_lop_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "hoten"
    t.datetime "ngaysinh"
    t.boolean "gioitinh"
    t.string "choohientai"
    t.string "hokhauthuongtru"
    t.string "noisinh"
    t.string "quequan"
    t.string "dantoc"
    t.string "dienchinhsach"
    t.boolean "canngheo"
    t.string "tencha"
    t.string "nghenghiepcha"
    t.integer "dienthoaibo"
    t.string "tenme"
    t.string "nghenghiepme"
    t.integer "dienthoaime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lop_id"
    t.index ["lop_id"], name: "index_students_on_lop_id"
  end

  create_table "taisanlops", force: :cascade do |t|
    t.string "tentaisan"
    t.string "donvitaisan"
    t.string "nguontaisan"
    t.integer "soluong"
    t.integer "lop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lop_id"], name: "index_taisanlops_on_lop_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin", default: 1
    t.string "username"
    t.integer "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
