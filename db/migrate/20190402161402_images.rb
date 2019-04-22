class Images < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :user_id
      t.text :file
      t.text :caption
    end
  end
end
