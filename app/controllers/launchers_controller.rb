class LaunchersController < ApplicationController
  before_action :set_launcher, only: [:show, :edit, :update, :destroy]

  # GET /launchers
  # GET /launchers.json
  def index
    @launchers = Launcher.all
  end

  # GET /launchers/1
  # GET /launchers/1.json
  def show
  end

  # GET /launchers/new
  def new
    @launcher = Launcher.new
  end

  # GET /launchers/1/edit
  def edit
  end

  # POST /launchers
  # POST /launchers.json
  def create
    @launcher = Launcher.new(launcher_params)

    respond_to do |format|
      if @launcher.save
        format.html { redirect_to @launcher, notice: 'Launcher was successfully created.' }
        format.json { render action: 'show', status: :created, location: @launcher }
      else
        format.html { render action: 'new' }
        format.json { render json: @launcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /launchers/1
  # PATCH/PUT /launchers/1.json
  def update
    respond_to do |format|
      if @launcher.update(launcher_params)
        format.html { redirect_to @launcher, notice: 'Launcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @launcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launchers/1
  # DELETE /launchers/1.json
  def destroy
    @launcher.destroy
    respond_to do |format|
      format.html { redirect_to launchers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_launcher
      @launcher = Launcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def launcher_params
      params.require(:launcher).permit(:user_name)
    end
end
