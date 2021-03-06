class CleanersController < ApplicationController
  before_action :set_cleaner, only: [:show, :edit, :update, :destroy]

  def index
    @cleaners = Cleaner.all
  end

  def show
  end

  def new
    @cleaner = Cleaner.new
    @city = City.new
  end

  def edit
  end

  def create
    @cleaner = Cleaner.new(cleaner_params)
    respond_to do |format|
      if @cleaner.save
        format.html { redirect_to @cleaner, notice: 'Greetings ..!! Email is deliverd to you when new Booking is created ' }
      else
        format.html { render :new }
        format.json { render json: @cleaner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cleaner.update(cleaner_params)
        format.html { redirect_to @cleaner, notice: 'Cleaner was successfully updated.' }
        format.json { render :show, status: :ok, location: @cleaner }
      else
        format.html { render :edit }
        format.json { render json: @cleaner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cleaner.destroy
    respond_to do |format|
      format.html { redirect_to cleaners_url, notice: 'Cleaner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
 
    def set_cleaner
      @cleaner = Cleaner.find(params[:id])
    end

    def cleaner_params
      params.require(:cleaner).permit(:first_name, :last_name, :email, :city, :quality_score)
    end
end
