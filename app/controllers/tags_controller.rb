class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def index
    @newspost = Newspost.find(params[:newspost_id])
    @tags = @newspost.tags

    respond_to do |format|
      format.json { render :json => @tags }
      format.html
    end
  end

  def show
    @newspost = Newspost.find(params[:newspost_id])
    @tag = @newspost.tags.find(params[:id])
  end

  def new
    @newspost = Newspost.find(params[:newspost_id])
    @tag = @newspost.tags.build
  end

  def edit
    @newspost = Newspost.find(params[:newspost_id])
    @tag = @newspost.tags.find(params[:id])
  end

  def create
    @newspost = Newspost.find(params[:newspost_id])
    @tag = @newspost.tags.create(tag_params)

    respond_to do |format|
      if @tag.save
        format.html { redirect_to @newspost, notice: 'Tag was successfully created.' }
        format.json { render :show, status: :created, location: @tag }
      else
        format.html { render :new }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @newspost = Newspost.find(params[:newspost_id])
    @tag = @newspost.tags.find(params[:id])

    respond_to do |format|
      if @tag.update_attributes(tag_params)
        format.html { redirect_to newspost_path(@newspost), notice: 'Tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag }
      else
        format.html { render :edit }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @newspost = Newspost.find(params[:newspost_id])
    @tag = @newspost.tags.find(params[:id])
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to newspost_url(@newspost), notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @newspost = Newspost.find(params[:newspost_id])
      @tag = @newspost.tags.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:name, :newspost_id)
    end
end
