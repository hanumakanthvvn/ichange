class CreateWeaknesses < ActiveRecord::Migration
  def change
    create_table :weaknesses do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
