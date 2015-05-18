class QualificacaosController < ApplicationController
  before_action :set_qualificacao, only: [:show, :edit, :update, :destroy]
  
  #esta pagina so pode ser aceita com autenticacao
  before_action :authenticate_user!

  # GET /qualificacaos
  # GET /qualificacaos.json
  def index
    @qualificacaos = Qualificacao.all
  end

  # GET /qualificacaos/1
  # GET /qualificacaos/1.json
  def show
  end

  def technical_skills
  end

  def soft_skills
  end

  def resources_available
  end

  # GET /qualificacaos/new
  def new
    @qualificacao = Qualificacao.new
  end

  # GET /qualificacaos/1/edit
  def edit
  end

  # GET /search
  def search
    #nome = params[:nome]
    linguagem = params[:linguagem]
    os = params[:os]
    ide = params[:ide]
    repositorio = params[:repositorio]
    database = params[:database]
    @projetos = Projeto.search(linguagem, os, ide, repositorio, database)
  end

  # POST /qualificacaos
  # POST /qualificacaos.json
  def create
    @qualificacao = Qualificacao.new(qualificacao_params)

    respond_to do |format|
      if @qualificacao.save
        format.html { redirect_to @qualificacao, notice: 'Qualificacao do usuario inserida com sucesso.' }
        format.json { render action: 'show', status: :created, location: @qualificacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualificacaos/1
  # PATCH/PUT /qualificacaos/1.json
  def update
    respond_to do |format|
      if @qualificacao.update(qualificacao_params)
        format.html { redirect_to @qualificacao, notice: 'Qualificacao do usuario foi alterada.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualificacaos/1
  # DELETE /qualificacaos/1.json
  def destroy
    @qualificacao.destroy
    respond_to do |format|
      format.html { redirect_to qualificacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualificacao
      @qualificacao = Qualificacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualificacao_params
      params.require(:qualificacao).permit(:linguagem, :nivelConhecimento, :user_id, :os, :ide, :repositorio, :database, :outros)
    end
end
