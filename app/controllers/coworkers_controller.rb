class CoworkersController < ApplicationController
  def index
    @coworkers = Coworker.all
  end

  def new
    @coworker = Coworker.new
  end

  def create
    @coworker = Coworker.new(coworker_params)
    CoworkerMailer.welcome_email(@coworker).deliver_now

    if @coworker.save
      redirect_to coworkers_path
    else
      render :new
    end
  end

  def destroy
    @coworker = Coworker.find(params[:id])

    @coworker.destroy
    redirect_to coworkers_path
  end

  def edit
    @coworker = Coworker.find(params[:id])
  end

  def update
    @coworker = Coworker.find(params[:id])

    if @coworker.update(coworker_params)
      redirect_to coworkers_path
    else
      render :edit
    end
  end

  def coworker_params
    params.require(:coworker).permit(:name, :email)
  end
end
