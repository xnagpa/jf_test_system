class VocabularyDrillsController < ApplicationController
  def index
    @word = VocabularyDrillItem.random_word_for_collection(params['text_book_collection_id'])
    @readings = VocabularyDrillItem.possible_translations
    @readings << @word.translated_reading
    @readings.uniq!
    @readings.shuffle!
  end
end
