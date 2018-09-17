class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :birthday
      t.integer :phone_number
      t.string :contact
      t.string :level
      t.string :sex
      t.string :notes

      t.timestamps
    end
  end
end
