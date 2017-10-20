class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :rating
      t.integer :network_id

      t.timestamps
    end
  end
end
