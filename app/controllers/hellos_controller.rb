class HellosController < ApplicationController
  before_action :set_hello, only: [:show, :update, :destroy]

  # GET /hellos
  def index
    @hellos = Hello.all

    render json: { 
      hello: "worlds"
    }
  end

  # GET /hellos/1
  def show
    render json: @hello
  end

  # POST /hellos
  def create
    @hello = Hello.new(hello_params)

    if @hello.save
      render json: @hello, status: :created, location: @hello
    else
      render json: @hello.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hellos/1
  def update
    if @hello.update(hello_params)
      render json: @hello
    else
      render json: @hello.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hellos/1
  def destroy
    @hello.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hello
      @hello = Hello.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hello_params
      params.fetch(:hello, {})
    end
end
