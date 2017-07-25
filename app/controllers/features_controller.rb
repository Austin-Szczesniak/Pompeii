class FeaturesController < ApplicationController
  before_action :set_feature, only: [:edit, :update, :destroy]

  before_action :authenticate_user!
  after_action :verify_authorized, except: :completed_sites

  def index
    @search = Feature.search(params[:q])
    @features = @search.result.page(params[:page]).per(15).order('cast(sheet as integer) asc')#.paginate(page: , per_page: 15)#
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
    authorize @features
  end

  def completed_sites
    @sites = Feature.order("region")
  end

  def show
    @feature = Feature.friendly.find(params[:id])
    authorize @feature
  end

  def new
    @feature = Feature.new
    authorize @feature
  end

  def edit
    authorize @feature
  end

  def create
    @feature = Feature.new(feature_params)
    authorize @feature

    respond_to do |format|
      if @feature.save
        format.html { redirect_to @feature, notice: 'Feature was successfully created.' }
        format.json { render :show, status: :created, location: @feature }
      else
        format.html { render :new }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize @feature
    respond_to do |format|
      if @feature.update(feature_params)
        format.html { redirect_to @feature, notice: 'Feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @feature }
      else
        format.html { render :edit }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize @feature
    @feature.destroy
    respond_to do |format|
      format.html { redirect_to features_url, notice: 'Feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_feature
      @feature = Feature.friendly.find(params[:id])
    end

    def feature_params
      params.require(:feature).permit(:sheet, :date, :recorder, :researcher, :season, :region, :insula, 
        :entrance, :gate, :structure, :category, :usage, :sheet_type, :space_number, :space_type, 
        :feature, :negative_feature, :minority_report, :description, :contiguous_relationship, 
        :photographer, :bw_roll, :color_roll, :digital_image, :videographer, :file_number, 
        :tape_number, :time_count, :video_comments, :drawing, :artist, :jashemski_photographer, 
        :jashemski_bw_roll, :jashemski_color_roll, :jashemski_digital_image, :locked,
        photos_attributes: [ :_destroy, :id, :picture ],
        floorplans_attributes: [ :_destroy, :id, :picture ],
        sketches_attributes: [ :_destroy, :id, :picture ],
        bibliographies_attributes: [ :_destroy, :id, :cited_work, :volume, :page, :comment ],
        )
    end
end
