class WearablesController < ApplicationController
  before_action :set_wearable, only: %i[ show edit update destroy ]

  # GET /wearables or /wearables.json
  def index
    @wearables = Wearable.all
  end

  # GET /wearables/1 or /wearables/1.json
  def show
  end

  # GET /wearables/new
  def new
    @wearable = Wearable.new
  end

  # GET /wearables/1/edit
  def edit
  end

  # POST /wearables or /wearables.json
  def create
    @wearable = Wearable.new(wearable_params)

    respond_to do |format|
      if @wearable.save
        format.html { redirect_to wearable_url(@wearable), notice: "Wearable was successfully created." }
        format.json { render :show, status: :created, location: @wearable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wearable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wearables/1 or /wearables/1.json
  def update
    respond_to do |format|
      if @wearable.update(wearable_params)
        format.html { redirect_to wearable_url(@wearable), notice: "Wearable was successfully updated." }
        format.json { render :show, status: :ok, location: @wearable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wearable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wearables/1 or /wearables/1.json
  def destroy
    @wearable.destroy

    respond_to do |format|
      format.html { redirect_to wearables_url, notice: "Wearable was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wearable
      @wearable = Wearable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wearable_params
      params.require(:wearable).permit(:name, :image_url)
    end
end
