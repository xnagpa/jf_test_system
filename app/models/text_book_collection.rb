class TextBookCollection < ActiveRecord::Base
  has_many :kanji_drill_items
  has_many :vocabulary_drill_items

end
