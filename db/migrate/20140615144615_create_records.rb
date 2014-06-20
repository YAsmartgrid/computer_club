class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
    	t.text :record_text
    	t.integer :user_id, :month, :day, :year
      t.timestamps
    end
  end
end
