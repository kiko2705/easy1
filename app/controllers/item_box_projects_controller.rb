class ItemBoxProjectsController < ApplicationController
  before_action :set_item_box_project, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @item_box_projects = ItemBoxProject.all
  end

  def show
  end

  def new
    @item_box_project = ItemBoxProject.new
  end

  def edit
  end

  def create
    @item_box_project = ItemBoxProject.create(item_box_project_params)  

    respond_to do |format|
      if @item_box_project.save
        format.html { redirect_to @item_box_project, notice: 'Item criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @item_box_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @item_box_project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item_box_project.update(item_box_project_params)
        format.html { redirect_to @item_box_project, notice: 'Item alterado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item_box_project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item_box_project.destroy
    respond_with(@item_box_project)
  end

  private
    def set_item_box_project
      @item_box_project = ItemBoxProject.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
      my_record = nil
    end

    def item_box_project_params
      params.require(:item_box_project).permit(:nome, :conteudo, :box_project_id)
    end
end
