class ListLinksController < ApplicationController
  before_action :set_list_link, only: [:show, :edit, :update, :destroy]

  # GET /list_links
  # GET /list_links.json
  def index
    @list_links = ListLink.all
  end

  # GET /list_links/1
  # GET /list_links/1.json
  def show
  end

  # GET /list_links/new
  def new
    @list_link = ListLink.new
  end

  # GET /list_links/1/edit
  def edit
  end

  # POST /list_links
  # POST /list_links.json
  def create
    @list_link = ListLink.new(list_link_params)

    respond_to do |format|
      if @list_link.save
        format.html { redirect_to @list_link, notice: 'List link was successfully created.' }
        format.json { render :show, status: :created, location: @list_link }
      else
        format.html { render :new }
        format.json { render json: @list_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_links/1
  # PATCH/PUT /list_links/1.json
  def update
    respond_to do |format|
      if @list_link.update(list_link_params)
        format.html { redirect_to @list_link, notice: 'List link was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_link }
      else
        format.html { render :edit }
        format.json { render json: @list_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_links/1
  # DELETE /list_links/1.json
  def destroy
    @list_link.destroy
    respond_to do |format|
      format.html { redirect_to list_links_url, notice: 'List link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_link
      @list_link = ListLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_link_params
      params.require(:list_link).permit(:name, :title, :author)
    end
end
