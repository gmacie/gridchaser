class GriddbsController < ApplicationController
  before_action :set_griddb, only: [:show, :edit, :update, :destroy]

  # GET /griddbs
  # GET /griddbs.json
  def index
    @griddbs = Griddb.all
  end

  # GET /griddbs/1
  # GET /griddbs/1.json
  def show
  end

  # GET /griddbs/new
  def new
    @griddb = Griddb.new
  end

  # GET /griddbs/1/edit
  def edit
  end

  # POST /griddbs
  # POST /griddbs.json
  def create
    @griddb = Griddb.new(griddb_params)

    respond_to do |format|
      if @griddb.save
        format.html { redirect_to @griddb, notice: 'Griddb was successfully created.' }
        format.json { render action: 'show', status: :created, location: @griddb }
      else
        format.html { render action: 'new' }
        format.json { render json: @griddb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /griddbs/1
  # PATCH/PUT /griddbs/1.json
  def update
    respond_to do |format|
      if @griddb.update(griddb_params)
        format.html { redirect_to @griddb, notice: 'Griddb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @griddb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /griddbs/1
  # DELETE /griddbs/1.json
  def destroy
    @griddb.destroy
    respond_to do |format|
      format.html { redirect_to griddbs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_griddb
      @griddb = Griddb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def griddb_params
      params.require(:griddb).permit(:entity, :log_of, :call_sign, :ffma_count)
    end
end
