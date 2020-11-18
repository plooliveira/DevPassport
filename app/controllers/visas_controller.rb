class VisasController < ApplicationController

  def index
    @visas = Visa.all
  end
end
