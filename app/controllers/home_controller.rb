class HomeController < ApplicationController
  def index
    @doc = Doc.new
  end
end
