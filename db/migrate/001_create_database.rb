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


class CreateDatabase < ActiveRecord::Migration[5.2]
  # def self.up
    # insert schema.rb here

    ActiveRecord::Schema.define(version: 0) do

      create_table "5000", primary_key: "ID", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.bigint "dentistID", default: 0, null: false
        t.text "name", null: false
        t.text "phone", null: false
        t.text "email", null: false
        t.string "zip", limit: 12, default: "", null: false
        t.integer "month", default: 0, null: false
        t.text "date", null: false
        t.text "draw", null: false
        t.integer "old", limit: 2, default: 0, null: false
        t.text "survey", null: false
      end
    
      create_table "SB0058_updates", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "contact_name", null: false
        t.string "lab_name", null: false
        t.string "city", limit: 50, null: false
        t.string "state", limit: 2, null: false
        t.string "phone", limit: 20, null: false
        t.string "email", null: false
        t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
      end
    
      create_table "acdla_prefs", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lab_id", null: false, unsigned: true
        t.boolean "show_prod", default: true, null: false
        t.boolean "show_serv", default: true, null: false
        t.text "statement", null: false
        t.boolean "first", default: true, null: false
        t.boolean "enabled", default: false, null: false
      end
    
      create_table "adminfiles", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
        t.string "file", null: false
        t.timestamp "timestamp", null: false
      end
    
      create_table "amsCourses", primary_key: "courseID", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "courseTitle", null: false
        t.string "courseSpeaker", null: false
        t.string "courseSponsor", null: false
        t.text "courseDescription", null: false
        t.string "courseDate", null: false
        t.integer "courseCredits", null: false
      end
    
      create_table "amsdti", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "UseSendThisFile", null: false
        t.integer "upload_service", default: 0, null: false
      end
    
      create_table "authenticated_labs", primary_key: "uuid", id: :binary, limit: 16, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", comment: "This stores a UUID and labID of logged in labs to pass betwe", force: :cascade do |t|
        t.integer "labID", null: false
      end
    
      create_table "careers", primary_key: "careerID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.string "category", limit: 150, default: "", null: false
        t.text "position", null: false
        t.text "description", null: false
        t.integer "posted", default: 0, null: false
        t.integer "filldate", default: 0, null: false
      end
    
      create_table "cc_payment", primary_key: "ID", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.text "lab", null: false
        t.text "address", null: false
        t.text "guarantor", null: false
        t.text "directory", null: false
        t.text "cc", null: false
        t.text "exp", null: false
        t.text "ccv", null: false
        t.text "amount", null: false
        t.text "start_date", null: false
        t.text "payments", null: false
        t.boolean "verified", default: false, null: false
        t.text "verif", null: false
        t.text "txt", null: false
        t.text "verif_time", null: false
        t.text "ip", null: false
      end
    
      create_table "deadbeats", primary_key: "dental_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", comment: "Deadbeat Dentists", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.string "lastname", limit: 150, default: "", null: false
        t.string "firstname", limit: 150, default: "", null: false
        t.string "city", limit: 150, default: "", null: false
        t.string "state", limit: 45, default: "", null: false
        t.float "balance", default: 0.0, null: false
        t.string "lastinvoice", limit: 15, default: "", null: false
        t.string "phone", limit: 150, default: "", null: false
        t.text "collection", limit: 255, null: false
        t.integer "entered", default: 0, null: false
      end
    
      create_table "design_software", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
      end
    
      create_table "forsale", primary_key: "saleID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.string "category", limit: 150, default: "", null: false
        t.text "title", null: false
        t.text "description", null: false
      end
    
      create_table "gift", primary_key: "ID", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.text "labID", null: false
        t.text "name", null: false
        t.text "phone", null: false
        t.text "city", null: false
        t.text "state", null: false
        t.text "email", null: false
        t.text "invoice", null: false
      end
    
      create_table "googlelocal", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "labID", null: false
        t.string "googleDescription", null: false
        t.string "cat1", null: false
        t.string "cat2", null: false
        t.string "cat3", null: false
        t.string "mondayhours1", null: false
        t.string "mondayhours2", null: false
        t.string "tuesdayhours1", null: false
        t.string "tuesdayhours2", null: false
        t.string "wednesdayhours1", null: false
        t.string "wednesdayhours2", null: false
        t.string "thursdayhours1", null: false
        t.string "thursdayhours2", null: false
        t.string "fridayhours1", null: false
        t.string "fridayhours2", null: false
        t.string "saturdayhours1", null: false
        t.string "saturdayhours2", null: false
        t.string "sundayhours1", null: false
        t.string "sundayhours2", null: false
        t.string "cash", null: false
        t.string "americanexpress", null: false
        t.string "visa", null: false
        t.string "check1", null: false
        t.string "dinersclub", null: false
        t.string "financing", null: false
        t.string "travelerscheck", null: false
        t.string "mastercard", null: false
        t.string "google", null: false
        t.string "invoice", null: false
        t.string "discover", null: false
        t.string "paypal", null: false
        t.string "add1", null: false
        t.string "add2", null: false
        t.string "add3", null: false
        t.string "add4", null: false
        t.string "add5", null: false
        t.string "add6", null: false
        t.string "add7", null: false
        t.string "add8", null: false
        t.string "add9", null: false
        t.string "add10", null: false
        t.string "notes", null: false
        t.string "yearestablished", null: false
        t.string "sloganortagline", null: false
      end
    
      create_table "hostnames", id: :bigint, default: 0, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.text "hostname", null: false
        t.text "lab", null: false
        t.text "type", null: false
        t.integer "month", default: 0, null: false
        t.integer "year", default: 0, null: false
        t.integer "day", default: 0, null: false
      end
    
      create_table "intraoral_scanner", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
      end
    
      create_table "lab_design_software", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lid", null: false
        t.integer "dsid", null: false
      end
    
      create_table "lab_intraoral_scanner", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "iid", null: false
        t.integer "lid", null: false
      end
    
      create_table "lab_logos", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lab_id", null: false, unsigned: true
        t.string "logo_big", null: false
        t.string "logo_small", null: false
      end
    
      create_table "lab_mill", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lid", null: false
        t.integer "mid", null: false
      end
    
      create_table "lab_photos", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lab_id", null: false, unsigned: true
        t.string "photo_big", null: false
        t.string "photo_small", null: false
      end
    
      create_table "lab_scanner", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lid", null: false
        t.integer "sid", null: false
      end
    
      create_table "labadmins", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "adminID", null: false, auto_increment: true
        t.string "username", limit: 12, default: "", null: false
        t.string "password", null: false
        t.index ["adminID"], name: "adminID"
      end
    
      create_table "labday_event", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
        t.string "description", limit: 1250, null: false
        t.datetime "start_time", null: false
        t.datetime "end_time", null: false
      end
    
      create_table "labdaysignup", primary_key: "signup_id", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "signup_name", limit: 256, null: false
        t.string "signup_labname", limit: 256, null: false
        t.string "signup_address", limit: 256, null: false
        t.string "signup_city", limit: 256, null: false
        t.string "signup_state", limit: 2, null: false
        t.string "signup_zip", limit: 9, null: false
        t.string "signup_phone", limit: 16, null: false
        t.string "signup_email", limit: 256, null: false
        t.string "signup_website", limit: 256, null: false
        t.integer "event_id", null: false
        t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
      end
    
      create_table "labeducation", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.integer "pref", default: 0, null: false
        t.text "education", null: false
      end
    
      create_table "labfiles", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", null: false, unsigned: true
        t.string "name", null: false
        t.string "file", null: false
        t.timestamp "timestamp", null: false
      end
    
      create_table "labnotes", primary_key: "entry_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.integer "pref", default: 0, null: false
        t.integer "timestamp", default: 0, null: false
        t.string "noteCaller", limit: 50, null: false
        t.string "noteTalkedTo", limit: 50, null: false
        t.time "noteTime", null: false
        t.date "noteDate", null: false
        t.text "noteText", null: false
        t.date "noteFollowUpDate", null: false
        t.time "noteFollowUpTime", null: false
        t.integer "noteEvent", default: 0, null: false
        t.integer "status"
        t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
      end
    
      create_table "labnotes_status", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
      end
    
      create_table "labphotos", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.integer "photoID", null: false, auto_increment: true
        t.string "photoCategory", default: "", null: false
        t.string "photoName", default: "", null: false
        t.text "photoCaption", null: false
        t.index ["photoID"], name: "photoID"
      end
    
      create_table "labprices", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.string "labState", limit: 50, default: "", null: false
        t.string "product", default: "", null: false
        t.float "price", default: 0.0, null: false
        t.date "date", null: false
      end
    
      create_table "labprofiles", primary_key: "labID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "labLogin", limit: 128, null: false
        t.string "labPassword", limit: 12, default: "", null: false
        t.string "labName", null: false
        t.string "labContact", default: "", null: false
        t.string "labStatus", limit: 100, default: "", null: false
        t.string "labPhone", limit: 32, null: false
        t.string "labPhone2", limit: 32, null: false
        t.string "labFax", limit: 32, null: false
        t.text "labAddress", null: false
        t.string "labCity", limit: 128, null: false
        t.string "labState", limit: 64, null: false
        t.string "labZip", limit: 15, default: "", null: false
        t.string "labCounty", limit: 128, null: false
        t.string "labEmail", default: "", null: false
        t.integer "shareholderStatus", default: 0, null: false
        t.string "secondaryEmail", null: false
        t.string "thirdEmail", null: false
        t.string "labURL", null: false
        t.string "labYears", limit: 64, null: false
        t.string "labTechs", limit: 64, null: false
        t.text "labStatement", null: false
        t.text "labAboutUs", null: false
        t.text "labWhyUs", null: false
        t.string "enabled", limit: 1, default: "", null: false
        t.integer "directconnect", default: 0, null: false
        t.integer "labHold", default: 0, null: false
        t.string "salesperson", limit: 64, null: false
        t.integer "signup_date", default: 0, null: false
        t.integer "expiration", default: 0, null: false
        t.integer "cancel_date", default: 0, null: false
        t.string "sponsor", limit: 1, default: "", null: false
        t.text "labSpecial", null: false
        t.integer "labSponsor", default: 0, null: false
        t.integer "labSponsor2", default: 0, null: false
        t.integer "homepage", limit: 2, default: 0, null: false
        t.integer "ftp", limit: 2, default: 0, null: false
        t.text "url", null: false
        t.text "rxuser", null: false
        t.text "rxpass", null: false
        t.integer "template", limit: 2, default: 0, null: false
        t.boolean "new_admin_template", default: false, null: false
        t.integer "month", default: 0, null: false
        t.integer "year", default: 0, null: false
        t.integer "managed", limit: 2, default: 0, null: false
        t.boolean "sgroup", default: false, null: false
        t.string "giftcode", limit: 8, null: false
        t.boolean "gr75", default: false, null: false
        t.integer "grexp", default: 0, null: false
        t.string "micro1", limit: 128, null: false
        t.string "micro2", limit: 128, null: false
        t.string "micro3", limit: 128, null: false
        t.string "micro4", limit: 128, null: false
        t.string "micro5", limit: 128, null: false
        t.string "micro6", limit: 128, null: false
        t.string "micro7", limit: 128, null: false
        t.string "micro8", limit: 128, null: false
        t.string "micro9", limit: 128, null: false
        t.string "micro10", limit: 128, null: false
        t.string "sgiftcode", limit: 8, default: "", null: false
        t.boolean "survey", default: false, null: false
        t.boolean "survey_enabled", default: false, null: false
        t.integer "warranty", null: false
        t.integer "msg", default: 0, null: false
        t.string "drate", null: false
        t.string "gusername", null: false
        t.string "gpassword", null: false
        t.string "outsource", limit: 1, default: "0", null: false
        t.date "ccpp_qualify_date", null: false
        t.integer "ams_tech_customer", default: 0, null: false
        t.integer "alert_list_contacted", default: 0, null: false
        t.integer "alert_list_contact_date", default: 0, null: false
        t.integer "has_scanner", default: 0, null: false
        t.integer "has_mill", default: 0, null: false
        t.integer "outsource_files", default: 0, null: false
        t.integer "mills_bridges", default: 0, null: false
        t.integer "has_titanium_mill", default: 0, null: false
        t.integer "outsource_titanium", default: 0, null: false
        t.integer "accepts_bar_work", default: 0, null: false
        t.integer "accepts_dentist_files", default: 0, null: false
        t.integer "interview", default: 0, null: false
        t.integer "invalid_phone", default: 0, null: false
        t.integer "invalid_phone2", default: 0, null: false
        t.integer "sales_level", default: 0, null: false
        t.string "design_center_lab", limit: 3, null: false
        t.float "lat", null: false
        t.float "lng", null: false
        t.index ["giftcode"], name: "giftcode"
      end
    
      create_table "labreferences", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.integer "pref", default: 0, null: false
        t.string "labref_Doctor", default: "", null: false
        t.string "labref_Phone", default: "", null: false
        t.text "labref_Statement", null: false
      end
    
      create_table "labsalaries", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.string "labState", limit: 50, default: "", null: false
        t.string "category", default: "", null: false
        t.float "salary", default: 0.0, null: false
        t.date "date", null: false
      end
    
      create_table "labservices", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.integer "prodID", default: 0, null: false
        t.text "labServiceCat", null: false
        t.text "labService", null: false
        t.index ["labID"], name: "labID"
        t.index ["prodID"], name: "prodID"
      end
    
      create_table "labsponsors", primary_key: "sponsorID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "sponsorName", default: "", null: false
        t.text "webLink", null: false
        t.string "phone", limit: 50, default: "", null: false
        t.text "specialsLink", null: false
        t.text "giftCode", null: false
        t.text "image", null: false
        t.bigint "repID", default: 0, null: false
      end
    
      create_table "labsupplyproducts", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "category", null: false
        t.string "subcategory", null: false
        t.string "brand", null: false
        t.string "itemname", null: false
        t.string "productcode", null: false
        t.string "mfgproductcode", null: false
        t.text "description", null: false
        t.string "packaging", null: false
        t.string "price", null: false
        t.string "marketprice", null: false
        t.string "photoURL", null: false
      end
    
      create_table "labsurvey_products", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", null: false, unsigned: true
        t.string "product_name", null: false
        t.text "product_description", null: false
        t.string "product_image", null: false
        t.string "product_date", limit: 10, null: false
      end
    
      create_table "labtypes", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", default: 0, null: false
        t.text "labCategory", null: false
      end
    
      create_table "labuploads", primary_key: "upload_id", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", comment: "Labs uploaded files", force: :cascade do |t|
        t.string "download_key", limit: 128, null: false
        t.integer "download_count", default: 0, null: false
        t.date "upload_date", null: false
        t.float "file_size", null: false
        t.string "file_name", limit: 256, null: false
        t.integer "labID", null: false
        t.string "tracking_number", limit: 32
        t.date "upload_expiration", null: false
        t.index ["download_key"], name: "download_key", unique: true
      end
    
      create_table "membermeeting", primary_key: "rsvp_id", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "rsvp_lab_id", null: false
        t.string "rsvp_full_name", limit: 64, null: false
        t.string "rsvp_lab_name", limit: 64, null: false
        t.string "rsvp_email", limit: 64, null: false
        t.string "rsvp_phone", limit: 16, null: false
        t.timestamp "rsvp_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
        t.integer "rsvp_attending", default: 0, null: false
        t.index ["rsvp_lab_id"], name: "rsvp_lab_id", unique: true
      end
    
      create_table "mill", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
      end
    
      create_table "print_orders", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.bigint "lab_id", null: false
        t.integer "number", null: false
        t.string "date", null: false
      end
    
      create_table "product_photos", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lab_id", null: false, unsigned: true
        t.string "photo_big", null: false
        t.string "photo_small", null: false
        t.string "title", null: false
        t.boolean "default", default: false, null: false
      end
    
      create_table "products", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "prodID", null: false, auto_increment: true
        t.string "category", default: "", null: false
        t.string "product", default: "", null: false
        t.index ["prodID"], name: "prodID"
      end
    
      create_table "profiles_questions", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "profile_id", default: 0, null: false
        t.integer "question_id", default: 0, null: false, unsigned: true
        t.string "response", default: "", null: false
        t.index ["profile_id"], name: "profile_id"
        t.index ["question_id"], name: "question_id"
      end
    
      create_table "questions", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.text "question", null: false
        t.integer "order", limit: 2, default: 0, null: false, unsigned: true
      end
    
      create_table "questions2", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "labname", null: false
        t.text "subject", null: false
        t.text "message", null: false
        t.datetime "date", null: false
        t.string "email", null: false
        t.text "reply", null: false
      end
    
      create_table "repadmins", primary_key: "ID", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", limit: 30, default: "", null: false
        t.string "login", limit: 30, default: "", null: false
        t.string "pass", limit: 30, default: "", null: false
        t.string "email", limit: 50, default: "", null: false
        t.string "phone", limit: 30, default: "", null: false
        t.string "repID", limit: 8, default: "", null: false
      end
    
      create_table "sc_event", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", null: false
        t.integer "noteID", null: false
        t.integer "status", null: false
        t.date "date", null: false
        t.time "time"
        t.datetime "created_at", null: false
        t.index ["created_at"], name: "created_at"
        t.index ["date"], name: "date"
        t.index ["labID"], name: "labID"
        t.index ["noteID"], name: "noteID"
        t.index ["status"], name: "status"
        t.index ["time"], name: "time"
      end
    
      create_table "scanner", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
      end
    
      create_table "shareholder", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "dlpID", null: false
        t.string "labName", limit: 50, null: false
        t.datetime "date", null: false
      end
    
      create_table "shareholder_login", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "dlpID", null: false
        t.string "labName", limit: 50, null: false
        t.datetime "date", null: false
      end
    
      create_table "superbowl", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "lab_id", null: false
        t.string "order", null: false
        t.integer "number", null: false
        t.datetime "date", null: false
      end
    
      create_table "survey_defaults", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "section", default: 0, null: false
        t.text "question", null: false
        t.string "low", limit: 30, default: "", null: false
        t.string "high", limit: 30, default: "", null: false
        t.integer "order", default: 0, null: false, unsigned: true
        t.boolean "middle", default: false, null: false
      end
    
      create_table "survey_questions", primary_key: "ID", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.bigint "dentistID", default: 0, null: false
        t.integer "question", default: 0, null: false
        t.integer "numVotes", default: 0, null: false
        t.bigint "total", default: 0, null: false
        t.float "average", default: 0.0, null: false
        t.boolean "enabled", default: false, null: false
      end
    
      create_table "survey_sections", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", limit: 25, default: "", null: false
      end
    
      create_table "templatepages", primary_key: "lab_id", id: :integer, default: nil, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.text "about_us", null: false
        t.text "products", null: false
        t.text "photos", null: false
        t.text "services", null: false
        t.text "education", null: false
        t.text "reference", null: false
        t.text "specials", null: false
        t.text "contact", null: false
        t.text "tips", null: false
      end
    
      create_table "tmplocal", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "labID", null: false
        t.string "BusinessName", null: false
        t.string "AddressLine1", null: false
        t.string "AddressLine2", null: false
        t.string "City", null: false
        t.string "State", null: false
        t.string "Zip", null: false
        t.string "PhoneNumber", null: false
        t.string "FaxNumber", null: false
        t.string "SecondaryTelephoneNumber", null: false
        t.string "Website", null: false
        t.string "BusinessCategoriesAcxiom", null: false
        t.string "BusinessCategoryGoogleMaps", null: false
        t.string "BusinessCategoryInfoUSA", null: false
        t.string "BusinessCategoryLocaleze", null: false
        t.string "BusinessDescription", null: false
        t.string "notes", null: false
        t.string "r2", null: false
        t.string "BrandsCarried", null: false
        t.string "ProductsandServicesOffered", null: false
        t.string "EmailAddress", null: false
        t.string "SundayOpen", null: false
        t.string "SundayClose", null: false
        t.string "MondayOpen", null: false
        t.string "MondayClose", null: false
        t.string "TuesdayOpen", null: false
        t.string "TuesdayClose", null: false
        t.string "WednesdayOpen", null: false
        t.string "WednesdayClose", null: false
        t.string "ThursdayOpen", null: false
        t.string "ThursdayClose", null: false
        t.string "FridayOpen", null: false
        t.string "FridayClose", null: false
        t.string "SaturdayOpen", null: false
        t.string "SaturdayClose", null: false
        t.string "ContactFirstNameforLocation", null: false
        t.string "ContactLastNameforLocation", null: false
        t.string "ContactNameTitleforLocation", null: false
        t.string "CreditCardsAccepted", null: false
        t.string "LanguagesSpoken", null: false
        t.string "YearEstablished", null: false
        t.string "SloganorTagline", null: false
      end
    
      create_table "togglebroadcastbanner", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "show_live_banner", null: false
      end
    
      create_table "warranty", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "dentist", null: false
        t.integer "lab", null: false
        t.string "name", null: false
        t.string "phone", limit: 12, null: false
        t.string "email", null: false
        t.string "zip", limit: 12, null: false
        t.boolean "full_denture", null: false
        t.boolean "partial_denture", null: false
        t.string "teeth", null: false
        t.string "end", limit: 32, null: false
      end
    
      create_table "watchedvideo", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.integer "labID", null: false
        t.string "video_name", null: false
        t.string "video_title", null: false
        t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
      end
    
      create_table "yourlab2020", primary_key: "rsvp_id", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "rsvp_full_name", limit: 64, null: false
        t.string "rsvp_city", limit: 32, null: false
        t.string "rsvp_state", limit: 16, null: false
        t.string "rsvp_lab_name", limit: 64, null: false
        t.string "rsvp_email", limit: 128, null: false
        t.string "rsvp_phone", limit: 16, null: false
        t.integer "rsvp_attending", default: 0, null: false
      end
    
      create_table "yourlab2020_event", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "name", null: false
        t.string "location_name", null: false
        t.string "location_address", null: false
        t.string "location_city", null: false
        t.string "location_state", limit: 2, null: false
        t.string "location_zip", null: false
        t.string "description", limit: 1250, null: false
        t.decimal "price", precision: 10, scale: 2, default: "0.0", null: false
        t.integer "max_seats", default: 0, null: false
        t.datetime "start_time", null: false
        t.datetime "end_time", null: false
      end
    
      create_table "yourlab2020_signup", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
        t.string "contact_name", limit: 256, null: false
        t.string "lab_name", limit: 256, null: false
        t.string "address", limit: 256, null: false
        t.string "city", limit: 256, null: false
        t.string "state", limit: 2, null: false
        t.string "zip", limit: 9, null: false
        t.string "phone", limit: 16, null: false
        t.string "email", limit: 256, null: false
        t.string "website", limit: 256, null: false
        t.integer "event_id", null: false
        t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
      end
    
      add_foreign_key "profiles_questions", "labprofile", column: "profile_id", primary_key: "labid", name: "profiles_questions_ibfk_1"
      add_foreign_key "profiles_questions", "questions", name: "profiles_questions_ibfk_2"
    end

  # end

  # def self.down
  #   # drop all the tables if you really need
  #   # to support migration back to version 0
  # end
end




