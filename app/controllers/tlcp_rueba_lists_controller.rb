class TlcpRuebaListsController < ApplicationController
  before_action :set_tlcp_rueba_list, only: [:show, :edit, :update, :destroy]

  # GET /tlcp_rueba_lists
  # GET /tlcp_rueba_lists.json
  def index
    @tlcp_rueba_lists = TlcpRuebaList.all
  end

  # GET /tlcp_rueba_lists/1
  # GET /tlcp_rueba_lists/1.json
  def show
  end

  # GET /tlcp_rueba_lists/new
  def new
    @tlcp_rueba_list = TlcpRuebaList.new
  end

  # GET /tlcp_rueba_lists/1/edit
  def edit
  end

  # POST /tlcp_rueba_lists
  # POST /tlcp_rueba_lists.json
  def create
    @tlcp_rueba_list = TlcpRuebaList.new(tlcp_rueba_list_params)

    respond_to do |format|
      if @tlcp_rueba_list.save
        format.html { redirect_to @tlcp_rueba_list, notice: 'Tlcp rueba list was successfully created.' }
        format.json { render :show, status: :created, location: @tlcp_rueba_list }
      else
        format.html { render :new }
        format.json { render json: @tlcp_rueba_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tlcp_rueba_lists/1
  # PATCH/PUT /tlcp_rueba_lists/1.json
  def update
    respond_to do |format|
      if @tlcp_rueba_list.update(tlcp_rueba_list_params)
        format.html { redirect_to @tlcp_rueba_list, notice: 'Tlcp rueba list was successfully updated.' }
        format.json { render :show, status: :ok, location: @tlcp_rueba_list }
      else
        format.html { render :edit }
        format.json { render json: @tlcp_rueba_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tlcp_rueba_lists/1
  # DELETE /tlcp_rueba_lists/1.json
  def destroy
    @tlcp_rueba_list.destroy
    respond_to do |format|
      format.html { redirect_to tlcp_rueba_lists_url, notice: 'Tlcp rueba list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tlcp_rueba_list
      @tlcp_rueba_list = TlcpRuebaList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tlcp_rueba_list_params
      params.require(:tlcp_rueba_list).permit(:title, :description)
    end
end
