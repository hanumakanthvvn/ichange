class CreateStrengths < ActiveRecord::Migration
  def change
    create_table :strengths do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
