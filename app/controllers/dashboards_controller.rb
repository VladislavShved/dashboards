class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @dashboards = Dashboard.where(user: current_user).order(:order)
  end

  def new
    @dashboard = Dashboard.new
  end

  def create
    @dashboard = Dashboard.new(dashboard_params)
    @dashboard.user = current_user
    @dashboard.order = Dashboard.where(user: current_user).count
    @dashboard.save

    redirect_to '/'
  end

  def edit
    @dashboard = Dashboard.find(params[:id])

    render
  end

  def update
    @dashboard = Dashboard.find(params[:id])
    @dashboard.assign_attributes(dashboard_params)
    @dashboard.save

    redirect_to '/'
  end

  def reorder
    success = Dashboards::Reorderer.new(reorder_params).reorder

    render json: { success: success }
  end

  private

  def reorder_params
    params['dashboards']
  end

  def dashboard_params
    params.require(:dashboard).permit(:text)
  end

end