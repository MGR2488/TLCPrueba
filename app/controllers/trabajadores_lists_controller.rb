class TrabajadoresListsController < ApplicationController
  before_action :set_trabajadores_list, only: [:show, :edit, :update, :destroy]

  # GET /trabajadores_lists
  # GET /trabajadores_lists.json
  def index
    @trabajadores_lists = TrabajadoresList.all
  end

  # GET /trabajadores_lists/1
  # GET /trabajadores_lists/1.json
  def show
  end

  # GET /trabajadores_lists/new
  def new
    @trabajadores_list = TrabajadoresList.new
  end

  # GET /trabajadores_lists/1/edit
  def edit
  end

  # POST /trabajadores_lists
  # POST /trabajadores_lists.json
  def create
    @trabajadores_list = TrabajadoresList.new(trabajadores_list_params)

    respond_to do |format|
      if @trabajadores_list.save
        format.html { redirect_to @trabajadores_list, notice: 'Trabajadores list was successfully created.' }
        format.json { render :show, status: :created, location: @trabajadores_list }
      else
        format.html { render :new }
        format.json { render json: @trabajadores_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabajadores_lists/1
  # PATCH/PUT /trabajadores_lists/1.json
  def update
    respond_to do |format|
      if @trabajadores_list.update(trabajadores_list_params)
        format.html { redirect_to @trabajadores_list, notice: 'Trabajadores list was successfully updated.' }
        format.json { render :show, status: :ok, location: @trabajadores_list }
      else
        format.html { render :edit }
        format.json { render json: @trabajadores_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajadores_lists/1
  # DELETE /trabajadores_lists/1.json
  def destroy
    @trabajadores_list.destroy
    respond_to do |format|
      format.html { redirect_to trabajadores_lists_url, notice: 'Trabajadores list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabajadores_list
      @trabajadores_list = TrabajadoresList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabajadores_list_params
      params.require(:trabajadores_list).permit(:Nombres, :Apellidos)
    end
end
