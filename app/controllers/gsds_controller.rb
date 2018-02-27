class GsdsController < ApplicationController
  def index
    @gsds = Gsd.all
  end

  def show
    @gsd = Gsd.find(params[:id])
  end

  def new
    @gsd = Gsd.new
  end

def create
  @gsd = Gsd.new(gsd_params)

  if @gsd.save
    redirect_to gsds_path
  else
    render :new
  end
end

def edit
  @gsd = Gsd.find(params[:id])
end

def update
  @gsd = Gsd.find(params[:id])

  if @gsd.update(gsd_params)
    redirect_to gsds_path
  else
    render :edit
  end
end

def destroy
  Gsd.find(params[:id]).destroy
  redirect_to Gsds_path
end

  private
    def gsd_params
      params.require(:gsd).permit(:item, :description, :priority)
    end
end
