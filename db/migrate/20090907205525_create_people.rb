class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :username

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
