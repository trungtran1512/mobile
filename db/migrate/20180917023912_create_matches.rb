class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :notes
      t.string :result
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
