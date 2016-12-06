class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :in_url
      t.string :slug
      t.integer :clicks, :default => 0

      t.timestamps
    end
  end
end
