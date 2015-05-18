class ContribuicaosController < ApplicationController
  before_action :set_contribuicao, only: [:show, :edit, :update, :destroy]

  # GET /contribuicaos
  # GET /contribuicaos.json
  def index
    @contribuicaos = Contribuicao.all
  end

  # GET /contribuicaos/1
  # GET /contribuicaos/1.json
  def show
  end

  # GET /contribuicaos/new
  def new
    @contribuicao = Contribuicao.new
  end

  # GET /contribuicaos/1/edit
  def edit
  end

  # POST /contribuicaos
  # POST /contribuicaos.json
  def create
    @contribuicao = Contribuicao.new(contribuicao_params)

    respond_to do |format|
      if @contribuicao.save
        format.html { redirect_to @contribuicao, notice: 'Contribuicao incluida com sucesso.' }
        format.json { render action: 'show', status: :created, location: @contribuicao }
      else
        format.html { render action: 'new' }
        format.json { render json: @contribuicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contribuicaos/1
  # PATCH/PUT /contribuicaos/1.json
  def update
    respond_to do |format|
      if @contribuicao.update(contribuicao_params)
        format.html { redirect_to @contribuicao, notice: 'Contribuicao alterada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contribuicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contribuicaos/1
  # DELETE /contribuicaos/1.json
  def destroy
    @contribuicao.destroy
    respond_to do |format|
      format.html { redirect_to contribuicaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contribuicao
      @contribuicao = Contribuicao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contribuicao_params
      params.require(:contribuicao).permit(:versao, :data, :arquivo, :user_id)
    end
end
