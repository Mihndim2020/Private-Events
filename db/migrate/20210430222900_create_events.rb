class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.text :description
      
      t.timestamps
    end
  end
end
