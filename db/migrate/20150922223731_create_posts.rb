class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.date :date
      t.string :author
      t.text :abstract
      t.text :body
      t.text :img_url
      t.string :url_title
      t.timestamps null: false
    end
  end
end
