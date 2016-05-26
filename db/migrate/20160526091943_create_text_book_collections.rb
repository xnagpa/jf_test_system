class CreateTextBookCollections < ActiveRecord::Migration
  def change
    create_table :text_book_collections do |t|
      t.string :title
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
