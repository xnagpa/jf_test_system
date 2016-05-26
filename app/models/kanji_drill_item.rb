class KanjiDrillItem < ActiveRecord::Base
  belongs_to :text_book_collection

  def self.random_word_for_collection(collection_id)
    temp = self.where(text_book_collection_id: collection_id)
    size = temp.size
    temp.offset(rand(size)).first
  end

  def self.possible_translations
    self.offset(rand(self.count)).limit(4).pluck(:translated_reading)
  end
end
