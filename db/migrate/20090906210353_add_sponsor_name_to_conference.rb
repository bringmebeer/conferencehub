class AddSponsorNameToConference < ActiveRecord::Migration
  def self.up
    add_column :conferences, :sponsor_name, :string
  end

  def self.down
    remove_column :conferences, :sponsor_name
  end
end
