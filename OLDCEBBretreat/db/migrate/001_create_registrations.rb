class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.string:Last_name 
      t.string:First_name
      t.string:Job_title
      t.string:Department
      t.string:Phone
      t.string:Email

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
