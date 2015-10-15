class HomeController < ApplicationController
  def index
    render :index, locals: { doc: Doc.new }
  end
end
