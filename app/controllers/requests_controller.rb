class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:show]


  # GET
  # GET /.json
  def index
    @requests = Request.all
  end

  # GET /type/:request
  # GET /type/books
  def reqtype
    @requestserv = Request.where("requesttype = '#{params[:request]}'")
  end

  # GET /1
  # GET /1.json
  def show
    @replyposts = Replypost.all
    @replypost = Replypost.new
    $testa = @request.id
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:title, :description, :requesttype)
    end
end
