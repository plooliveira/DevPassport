class VisasController < ApplicationController


  def index
    @visas = policy_scope(Visa)
  end
end
