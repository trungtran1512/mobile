class CreateYards < ActiveRecord::Migration[5.2]
  def change
    create_table :yards do |t|
      t.string :name
      t.string :area
      t.string :phone_number
      t.string :history
      t.string :status
      t.float :price

      t.timestamps
    end
  end
end
