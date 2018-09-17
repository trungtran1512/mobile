class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :phone_number
      t.integer :member
      t.integer :type_yard
      t.string :history
      t.string :motes
      t.string :type_sex

      t.timestamps
    end
  end
end
