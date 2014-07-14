class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
    	t.string :date
    	t.string :desc
      t.timestamps
    end
  end
end
