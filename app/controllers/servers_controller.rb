class ServersController < ApplicationController
  def index
    @servers = Server.all
  end

  def show
    @server = Server.find(params[:id])
  end

  def new
    @server = Server.new
  end

  def create
    @server = Server.new(server_params)

    if @server.save
      redirect_to @server
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit 
    @server = Server.find(params[:id])
  end

  def update
    @server = Server.find(params[:id])

    if @server.update(server_params)
      redirect_to @server
    else  
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @server = Server.find(params[:id])
    @server.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def server_params
      params.require(:server).permit(:title, :model_number, :description)
    end
end
