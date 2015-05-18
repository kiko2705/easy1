class ProjetosController < ApplicationController
  before_action :set_projeto, only: [:show, :edit, :update, :destroy]

  # GET /projetos
  # GET /projetos.json

  # GET /index
  def index
    @projetos = Projeto.all
  end

  # GET /projetos/1
  # GET /projetos/1.json
  def show
    @query = params[:q]
    @projetos = []
    if @query == ""
       redirect_to action: "show"
    else
      if @query == "ADD" or @query == "add"
         redirect_to action: "new"
      else @projetos = Projeto.where('nome LIKE ?', "%#{@query}%")
      end
    end 
  end

  # GET /projetos/new
  def new
    @projeto = Projeto.new
  end

  # GET /projetos/1/edit
  def edit
  end

  # GET /projetos/contribuir
  def contribuir
  end

  def lista_projetos
  end

  # GET /pagina_projeto
  def pagina_projeto    
  end

  def search
    @query = params[:q]
    @projetos = []
    if @query == ""
      redirect_to :back
    else
      @projetos = Projeto.where('nome LIKE ?', "%#{@query}%")
    end
  end 

  # POST /projetos
  # POST /projetos.json
  def create
    @projeto = Projeto.create(projeto_params)  

    respond_to do |format|
      if @projeto.save
        format.html { redirect_to @projeto, notice: 'Projeto criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @projeto }
      else
        format.html { render action: 'new' }
        format.json { render json: @projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projetos/1
  # PATCH/PUT /projetos/1.json
  def update
    respond_to do |format|
      if @projeto.update(projeto_params)
        format.html { redirect_to @projeto, notice: 'Projeto alterado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projetos/1
  # DELETE /projetos/1.json
  def destroy
    @projeto.destroy
    respond_to do |format|
      format.html { redirect_to projetos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto
      @projeto = Projeto.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
      my_record = nil
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projeto_params
      params.require(:projeto).permit(:nome, :descricao, :data_inicio, :status, :linguagem, :arquivoproj, :administrador, :os, :ide, :repositorio, :database, :urlPagina, :urlIssueTracker, :urlRepositorioFonte, :urlMailingList, :urlProjetoOpenHub, :licenca)
    end
end
