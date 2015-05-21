class CaixasController < ApplicationController
  before_action :set_caixa, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @caixas = Caixa.all
    respond_with(@caixas)
  end

  def show
    respond_with(@caixa)
  end

  def new
    @caixa = Caixa.new
    respond_with(@caixa)
  end

  def edit
  end

  def create
    @caixa = Caixa.new(caixa_params)
    flash[:notice] = 'Caixa was successfully created.' if @caixa.save
    respond_with(@caixa)
  end

  def update
    flash[:notice] = 'Caixa was successfully updated.' if @caixa.update(caixa_params)
    respond_with(@caixa)
  end

  def destroy
    @caixa.destroy
    respond_with(@caixa)
  end

  private
    def set_caixa
      @caixa = Caixa.find(params[:id])
    end

    def caixa_params
      params.require(:caixa).permit(:nome, :descricao)
    end
end
