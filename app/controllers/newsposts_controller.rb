class NewspostsController < ApplicationController
  before_action :set_newspost, only: [:show, :edit, :update, :destroy]

  # GET /newsposts
  # GET /newsposts.json
  def index
    @newsposts = Newspost.all
    respond_to do |format| 
      format.json { render :json => @newsposts }
      format.html
    end
  end

  # GET /newsposts/1
  # GET /newsposts/1.json
  def show
  end

  # GET /newsposts/new
  def new
    @newspost = Newspost.new
  end

  # GET /newsposts/1/edit
  def edit
  end

  # POST /newsposts
  # POST /newsposts.json
  def create
    @newspost = Newspost.new(newspost_params)

    respond_to do |format|
      if @newspost.save
        format.html { redirect_to @newspost, notice: 'Newspost was successfully created.' }
        format.json { render :show, status: :created, location: @newspost }
      else
        format.html { render :new }
        format.json { render json: @newspost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsposts/1
  # PATCH/PUT /newsposts/1.json
  def update
    respond_to do |format|
      if @newspost.update(newspost_params)
        format.html { redirect_to @newspost, notice: 'Newspost was successfully updated.' }
        format.json { render :show, status: :ok, location: @newspost }
      else
        format.html { render :edit }
        format.json { render json: @newspost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsposts/1
  # DELETE /newsposts/1.json
  def destroy
    @newspost.destroy
    respond_to do |format|
      format.html { redirect_to newsposts_url, notice: 'Newspost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newspost
      @newspost = Newspost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newspost_params
      params.require(:newspost).permit(:content, :date_posted, :poster)
    end
end
