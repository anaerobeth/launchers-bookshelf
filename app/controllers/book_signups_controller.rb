class BookSignupsController < ApplicationController
  before_action :set_book_signup, only: [:show, :edit, :update, :destroy]

  # GET /book_signups
  # GET /book_signups.json
  def index
    @book_signups = BookSignup.all
  end

  # GET /book_signups/1
  # GET /book_signups/1.json
  def show
  end

  # GET /book_signups/new
  def new
    @book_signup = BookSignup.new
  end

  # GET /book_signups/1/edit
  def edit
  end

  # POST /book_signups
  # POST /book_signups.json
  def create
    @book_signup = BookSignup.new(book_signup_params)

    respond_to do |format|
      if @book_signup.save
        format.html { redirect_to @book_signup, notice: 'Book signup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_signup }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_signups/1
  # PATCH/PUT /book_signups/1.json
  def update
    respond_to do |format|
      if @book_signup.update(book_signup_params)
        format.html { redirect_to @book_signup, notice: 'Book signup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_signups/1
  # DELETE /book_signups/1.json
  def destroy
    @book_signup.destroy
    respond_to do |format|
      format.html { redirect_to book_signups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_signup
      @book_signup = BookSignup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_signup_params
      params.require(:book_signup).permit(:launcher_id, :book_id)
    end
end
