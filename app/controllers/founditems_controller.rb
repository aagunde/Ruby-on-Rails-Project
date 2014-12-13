class FounditemsController < ApplicationController
  before_action :set_founditem, only: [:show, :edit, :update, :destroy]

  # GET /founditems
  # GET /founditems.json
  def index
    @founditems = Founditem.all
  end

  # GET /founditems/1
  # GET /founditems/1.json
  def show
  end

  # GET /founditems/new
  def new
    @founditem = Founditem.new
  end

  # GET /founditems/1/edit
  def edit
  end

  # POST /founditems
  # POST /founditems.json
  def create
    @founditem = Founditem.new(founditem_params)

    respond_to do |format|
      if @founditem.save
        format.html { redirect_to @founditem, notice: 'Founditem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @founditem }
      else
        format.html { render action: 'new' }
        format.json { render json: @founditem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /founditems/1
  # PATCH/PUT /founditems/1.json
  def update
    respond_to do |format|
      if @founditem.update(founditem_params)
        format.html { redirect_to @founditem, notice: 'Founditem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @founditem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /founditems/1
  # DELETE /founditems/1.json
  def destroy
    @founditem.destroy
    respond_to do |format|
      format.html { redirect_to founditems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_founditem
      @founditem = Founditem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def founditem_params
      params.require(:founditem).permit(:name, :color, :brand, :place_where_found)
    end
end
