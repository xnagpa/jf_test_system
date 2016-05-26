class TextBookCollectionController < ApplicationController
  def index
    @collections = TextBookCollection.all
  end
end
