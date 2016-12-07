class HomeController < ApplicationController
  def index
    # permite criar novos links na página home#index
    @link = Link.new
    # permite listar todos os links na página home#index
    @links = Link.all
  end
end
