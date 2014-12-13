class LostitemsController < ApplicationController
  before_action :set_lostitem, only: [:show, :edit, :update, :destroy]

  # GET /lostitems
  # GET /lostitems.json
  def index
    @lostitems = Lostitem.all
  end

  # GET /lostitems/1
  # GET /lostitems/1.json
  def show
  end

  # GET /lostitems/new
  def new
    @lostitem = Lostitem.new
  end

  # GET /lostitems/1/edit
  def edit
  end

  # POST /lostitems
  # POST /lostitems.json
  def create
    @lostitem = Lostitem.new(lostitem_params)

    respond_to do |format|
      if @lostitem.save
        format.html { redirect_to @lostitem, notice: 'Lostitem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lostitem }
      else
        format.html { render action: 'new' }
        format.json { render json: @lostitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lostitems/1
  # PATCH/PUT /lostitems/1.json
  def update
    respond_to do |format|
      if @lostitem.update(lostitem_params)
        format.html { redirect_to @lostitem, notice: 'Lostitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lostitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lostitems/1
  # DELETE /lostitems/1.json
  def destroy
    @lostitem.destroy
    respond_to do |format|
      format.html { redirect_to lostitems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lostitem
      @lostitem = Lostitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lostitem_params
      params.require(:lostitem).permit(:name, :color, :brand, :place_where_lost)
    end
end
