class Ag3sController < ApplicationController
  before_action :set_ag3, only: [:show, :edit, :update, :destroy]

  # GET /ag3s
  # GET /ag3s.json
  def index
    @ag3s = Ag3.all
  end

  # GET /ag3s/1
  # GET /ag3s/1.json
  def show
  end

  # GET /ag3s/new
  def new
    @ag3 = Ag3.new
  end

  # GET /ag3s/1/edit
  def edit
  end

  # POST /ag3s
  # POST /ag3s.json
  def create
    @ag3 = Ag3.new(ag3_params)

    respond_to do |format|
      if @ag3.save
        format.html { redirect_to @ag3, notice: 'Ag3 was successfully created.' }
        format.json { render :show, status: :created, location: @ag3 }
      else
        format.html { render :new }
        format.json { render json: @ag3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag3s/1
  # PATCH/PUT /ag3s/1.json
  def update
    respond_to do |format|
      if @ag3.update(ag3_params)
        format.html { redirect_to @ag3, notice: 'Ag3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag3 }
      else
        format.html { render :edit }
        format.json { render json: @ag3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag3s/1
  # DELETE /ag3s/1.json
  def destroy
    @ag3.destroy
    respond_to do |format|
      format.html { redirect_to ag3s_url, notice: 'Ag3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag3
      @ag3 = Ag3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag3_params
      params.require(:ag3).permit(:name, :title, :author)
    end
end
