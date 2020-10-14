class TuitsController < ApplicationController
  before_action :set_tuit, only: [:show, :edit, :update, :destroy]

  # GET /tuits
  # GET /tuits.json
  def index
    @tuits = Tuit.all.order("created_at DESC")
    @tuit = Tuit.new
  end

  # GET /tuits/1
  # GET /tuits/1.json
  def show
  end

  # GET /tuits/new
  def new
    @tuit = Tuit.new
  end

  # GET /tuits/1/edit
  def edit
  end

  # POST /tuits
  # POST /tuits.json
  def create
    @tuit = Tuit.new(tuit_params)

    respond_to do |format|
      if @tuit.save
        format.html { redirect_to @tuit, notice: 'Tuit was successfully created.' }
        format.json { render :show, status: :created, location: @tuit }
      else
        format.html { render :new }
        format.json { render json: @tuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuits/1
  # PATCH/PUT /tuits/1.json
  def update
    respond_to do |format|
      if @tuit.update(tuit_params)
        format.html { redirect_to @tuit, notice: 'Tuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuit }
      else
        format.html { render :edit }
        format.json { render json: @tuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuits/1
  # DELETE /tuits/1.json
  def destroy
    @tuit.destroy
    respond_to do |format|
      format.html { redirect_to tuits_url, notice: 'Tuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuit
      @tuit = Tuit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tuit_params
      params.require(:tuit).permit(:tuit)
    end
end
