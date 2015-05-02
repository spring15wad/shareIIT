class ReplypostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_replypost, only: [:edit, :update, :destroy]

  # GET /replyposts
  # GET /replyposts.json
  def index
    @replyposts = Replypost.all
  end

  # GET /replyposts/new
  def new
    @replypost = Replypost.new
  end

  # GET /replyposts/1/edit
  def edit
  end

  # POST /replyposts
  # POST /replyposts.json
  def create
    @replypost = Replypost.new(replypost_params)
    @replypost.request_id = $testa
    @replypost.replyuid = current_user.id

    respond_to do |format|
      if @replypost.save
        format.html { redirect_to :back, notice: 'Replypost was successfully created.' }
        format.json { render :show, status: :created, location: @replypost }
      else
        format.html { render :new }
        format.json { render json: :back.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /replyposts/1
  # PATCH/PUT /replyposts/1.json
  def update
    @replypostred = root_url + $testa.to_s
    respond_to do |format|
      if @replypost.update(replypost_params)
        format.html { redirect_to @replypostred, notice: 'Replypost was successfully updated.' }
        format.json { render :show, status: :ok, location: @replypost }
      else
        format.html { render :edit }
        format.json { render json: @replypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replyposts/1
  # DELETE /replyposts/1.json
  def destroy
    @replypost.destroy
    respond_to do |format|
      format.html { redirect_to ':back', notice: 'Replypost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_replypost
      @replypost = Replypost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def replypost_params
      params.require(:replypost).permit(:content)
    end
end
