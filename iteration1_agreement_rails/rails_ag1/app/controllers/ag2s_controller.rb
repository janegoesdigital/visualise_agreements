class Ag2sController < ApplicationController
  before_action :set_ag2, only: [:show, :edit, :update, :destroy]

  # GET /ag2s
  # GET /ag2s.json
  def index
    @ag2s = Ag2.all
  end

  # GET /ag2s/1
  # GET /ag2s/1.json
  def show
  end

  # GET /ag2s/new
  def new
    @ag2 = Ag2.new
  end

  # GET /ag2s/1/edit
  def edit
  end

  # POST /ag2s
  # POST /ag2s.json
  def create
    @ag2 = Ag2.new(ag2_params)

    respond_to do |format|
      if @ag2.save
        format.html { redirect_to @ag2, notice: 'Ag2 was successfully created.' }
        format.json { render :show, status: :created, location: @ag2 }
      else
        format.html { render :new }
        format.json { render json: @ag2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag2s/1
  # PATCH/PUT /ag2s/1.json
  def update
    respond_to do |format|
      if @ag2.update(ag2_params)
        format.html { redirect_to @ag2, notice: 'Ag2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag2 }
      else
        format.html { render :edit }
        format.json { render json: @ag2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag2s/1
  # DELETE /ag2s/1.json
  def destroy
    @ag2.destroy
    respond_to do |format|
      format.html { redirect_to ag2s_url, notice: 'Ag2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag2
      @ag2 = Ag2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag2_params
      params.require(:ag2).permit(:name, :title, :author)
    end
end
