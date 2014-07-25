class Candidates < ActiveRecord::Migration
  create_table :candidates do |t|
    t.string :fullname
    t.string :email
    t.string :password
  end

  add_index :candidates, :fullname, :email, :password,  unique: true
end

def down
  drop_table :users
end
