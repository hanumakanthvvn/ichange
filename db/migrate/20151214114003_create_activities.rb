class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :strength_id
      t.integer :weakness_id
      t.integer :count, default: 0

      t.timestamps null: false
    end
  end
end
