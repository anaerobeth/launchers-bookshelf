q class BookLaunchersController < ApplicationController
  before_action :set_book_launcher, only: [:show, :edit, :update, :destroy]

  # GET /book_launchers
  # GET /book_launchers.json
  def index
    @book_launchers = BookLauncher.all
  end

  # GET /book_launchers/1
  # GET /book_launchers/1.json
  def show
  end

  # GET /book_launchers/new
  def new
    @book_launcher = BookLauncher.new
  end

  # GET /book_launchers/1/edit
  def edit
  end

  # POST /book_launchers
  # POST /book_launchers.json
  def create
    @book_launcher = BookLauncher.new(book_launcher_params)

    respond_to do |format|
      if @book_launcher.save
        format.html { redirect_to @book_launcher, notice: 'Book launcher was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_launcher }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_launcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_launchers/1
  # PATCH/PUT /book_launchers/1.json
  def update
    respond_to do |format|
      if @book_launcher.update(book_launcher_params)
        format.html { redirect_to @book_launcher, notice: 'Book launcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_launcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_launchers/1
  # DELETE /book_launchers/1.json
  def destroy
    @book_launcher.destroy
    respond_to do |format|
      format.html { redirect_to book_launchers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_launcher
      @book_launcher = BookLauncher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_launcher_params
      params.require(:book_launcher).permit(:book_id, :launcher_id)
    end
end
