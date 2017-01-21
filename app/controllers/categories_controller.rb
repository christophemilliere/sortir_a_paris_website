class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /gs
  # GET /gs.json
  def index
    @categories = Category.all
  end

  # GET /gs/1
  # GET /gs/1.json
  def show
  end

  # GET /gs/new
  def new
    @category = Category.new
  end

  # GET /gs/1/edit
  def edit
  end

  # POST /gs
  # POST /gs.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'G was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gs/1
  # PATCH/PUT /gs/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'G was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gs/1
  # DELETE /gs/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to gs_url, notice: 'G was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
