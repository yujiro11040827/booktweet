class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name,         null: false
      t.string :author,       null: false
      t.integer :genre_id,    null: false
      t.text   :impressions,  null: false
      t.timestamps
    end
  end
end
