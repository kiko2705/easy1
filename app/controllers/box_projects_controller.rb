class BoxProjectsController < ApplicationController
  before_action :set_box_project, only: [:show, :edit, :update, :destroy]

  def index
    @box_projects = BoxProject.all
  end

  def show
  end

  def new
    @box_project = BoxProject.new
    @box_project.item_box_projects.build
  end

  def create
    @box_project = BoxProject.create(box_project_params)  

    respond_to do |format|
      if @box_project.save
        format.html { redirect_to @box_project, notice: 'Box criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @box_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @box_project.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @box_project = BoxProject.find(params[:id])
  end

  def update 
     respond_to do |format|
      if @box_project.update(box_project_params)
        format.html { redirect_to @box_project, notice: 'Box alterado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @box_project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @box_project.destroy
    respond_to do |format|
      format.html { redirect_to box_projects_url }
      format.json { head :no_content }
    end
  end

  private
    def set_box_project
      @box_project = BoxProject.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
      my_record = nil
    end

    def box_project_params
      params.require(:box_project).permit(:titulo, :descricao, :topico, :link, :projeto_id, item_box_projects_attributes:[:nome, :conteudo, :_destroy,:id])
    end
end
