class WordsController < ApplicationController
  before_action :render_layout_if_html

  respond_to :json, :html

  def index
    respond_with (@words = Word.all)
  end

  def create
    respond_with Word.create(word_params)
  end

  private
    def render_layout_if_html
      if request.format.symbol == :html
        render "layouts/application"
      end
    end

    def word_params
      params.require(:word).permit(:name, :description)
    end

end