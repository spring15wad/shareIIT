class Account::RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_own_request, only: [:edit, :update, :destroy]

  # GET /account/requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    respond_to do |format|
      if @request.save
        format.html { redirect_to public_request_path(@request), notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to public_request_path(@request), notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to account_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_own_request
      @request = Request.find_by_id_and_user_id(params[:id], current_user.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:title, :description, :requesttype)
    end
end
