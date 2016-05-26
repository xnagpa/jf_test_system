class KanjiDrillsController < ApplicationController
  def index
    @word = KanjiDrillItem.random_word_for_collection(params['text_book_collection_id'])
    @readings = KanjiDrillItem.possible_translations
    @readings << @word.translated_reading
    @readings.uniq!
    @readings.shuffle!
  end
end
