class BibliographiesController < ApplicationController
  before_action :set_bibliography, only: [:show, :edit, :update, :destroy]
  before_action :get_feature
  # GET /bibliographies
  # GET /bibliographies.json
  def index
    @bibliographies = @feature.bibliographies
  end

  # GET /bibliographies/1
  # GET /bibliographies/1.json
  def show
  end

  # GET /bibliographies/new
  def new
    @bibliography = Bibliography.new
  end

  # GET /bibliographies/1/edit
  def edit
  end

  # POST /bibliographies
  # POST /bibliographies.json
  def create
    @bibliography = Bibliography.new(bibliography_params)

    respond_to do |format|
      if @bibliography.save
        format.html { redirect_to feature_bibliographies_path(@feature), notice: 'Bibliography was successfully created.' }
        format.json { render :show, status: :created, location: @bibliography }
      else
        format.html { render :new }
        format.json { render json: @bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bibliographies/1
  # PATCH/PUT /bibliographies/1.json
  def update
    respond_to do |format|
      if @bibliography.update(bibliography_params)
        format.html { redirect_to feature_bibliographies_path(@feature), notice: 'Bibliography was successfully updated.' }
        format.json { render :show, status: :ok, location: @bibliography }
      else
        format.html { render :edit }
        format.json { render json: @bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliographies/1
  # DELETE /bibliographies/1.json
  def destroy
    @bibliography.destroy
    respond_to do |format|
      format.html { redirect_to feature_bibliographies_path(@feature), notice: 'Bibliography was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bibliography
      @bibliography = Bibliography.find(params[:id])
    end

    def get_feature
      @feature = Feature.find(params[:feature_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bibliography_params
      params.require(:bibliography).permit(:cited_work, :volume, :page, :comment, :feature_id)
    end
end
