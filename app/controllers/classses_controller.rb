class ClasssesController < ApplicationController
  before_action :set_classs, only: [:show, :edit, :update, :destroy]

  # GET /classses
  # GET /classses.json
  def index
    @classses = Classs.all
  end

  # GET /classses/1
  # GET /classses/1.json
  def show
  end

  # GET /classses/new
  def new
    @classs = Classs.new
  end

  # GET /classses/1/edit
  def edit
  end

  # POST /classses
  # POST /classses.json
  def create
    @classs = Classs.new(classs_params)

    respond_to do |format|
      if @classs.save
        format.html { redirect_to @classs, notice: 'Classs was successfully created.' }
        format.json { render :show, status: :created, location: @classs }
      else
        format.html { render :new }
        format.json { render json: @classs.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classses/1
  # PATCH/PUT /classses/1.json
  def update
    respond_to do |format|
      if @classs.update(classs_params)
        format.html { redirect_to @classs, notice: 'Classs was successfully updated.' }
        format.json { render :show, status: :ok, location: @classs }
      else
        format.html { render :edit }
        format.json { render json: @classs.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classses/1
  # DELETE /classses/1.json
  def destroy
    @classs.destroy
    respond_to do |format|
      format.html { redirect_to classses_url, notice: 'Classs was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classs
      @classs = Classs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classs_params
      params.require(:classs).permit(:name, :major_id)
    end
end
