class TlcListsController < ApplicationController
  before_action :set_tlc_list, only: [:show, :edit, :update, :destroy]

  # GET /tlc_lists
  # GET /tlc_lists.json
  def index
    @tlc_lists = TlcList.all
  end

  # GET /tlc_lists/1
  # GET /tlc_lists/1.json
  def show
  end

  # GET /tlc_lists/new
  def new
    @tlc_list = TlcList.new
  end

  # GET /tlc_lists/1/edit
  def edit
  end

  # POST /tlc_lists
  # POST /tlc_lists.json
  def create
    @tlc_list = TlcList.new(tlc_list_params)

    respond_to do |format|
      if @tlc_list.save
        format.html { redirect_to @tlc_list, notice: 'Tlc list was successfully created.' }
        format.json { render :show, status: :created, location: @tlc_list }
      else
        format.html { render :new }
        format.json { render json: @tlc_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tlc_lists/1
  # PATCH/PUT /tlc_lists/1.json
  def update
    respond_to do |format|
      if @tlc_list.update(tlc_list_params)
        format.html { redirect_to @tlc_list, notice: 'Tlc list was successfully updated.' }
        format.json { render :show, status: :ok, location: @tlc_list }
      else
        format.html { render :edit }
        format.json { render json: @tlc_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tlc_lists/1
  # DELETE /tlc_lists/1.json
  def destroy
    @tlc_list.destroy
    respond_to do |format|
      format.html { redirect_to tlc_lists_url, notice: 'Tlc list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tlc_list
      @tlc_list = TlcList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tlc_list_params
      params.require(:tlc_list).permit(:title, :description)
    end
end
