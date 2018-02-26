class ReportsController < ApplicationController

  def new 
    @report = Report.new
  end

  def create
    @project = Project.find(params[:project_id])
    @report = @project.reports.create(report_params)

    redirect_to project_path(@project)
  end

  def edit
    @project = Project.find(params[:project_id])
    @report = @project.reports.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])

    if @report.update(report_params)
      redirect_to project_path(params[:project_id])
    else
      render :edit
    end
  end
  
  def destroy
    @project = Project.find(params[:project_id])
    @report = @project.reports.find(params[:id])

    @report.destroy
    redirect_to project_path(params[:project_id])
  end

  def report_params
    params.require(:report).permit(:title, :description, :coworker_id, :status)
  end

end
