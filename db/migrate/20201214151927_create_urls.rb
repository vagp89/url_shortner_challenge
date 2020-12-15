class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls do |t|
      t.string :link
      t.string :code
      t.integer :count_visit

      t.timestamps
    end
  end
end
