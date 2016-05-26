class CreateVocabularyDrillItems < ActiveRecord::Migration
  def change
    create_table :vocabulary_drill_items do |t|
      t.string :native_reading
      t.string :translated_reading
      t.integer :text_book_collection_id

      t.timestamps null: false
    end
  end
end
