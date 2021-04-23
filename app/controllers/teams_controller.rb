class TeamsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @team= Team.new
  end

  def create
    @company = Company.find(params[:company_id])
    @team= Team.new(team_params)
    if @team.save
      redirect_to company_path(@company.id)
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @team = Team.find(params[:id])
  end

  def edit
    @company = Company.find(params[:company_id])
    @team = Team.find(params[:id])
  end

  def update
    @company = Company.find(params[:company_id])
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to company_team_path(@company,@team.id)
    elsif 
      render :edit
    end
  end

  private
  def team_params
    params.require(:team).permit(:team_name, member_ids:[]).merge(company_id: @company.id)
  end
end
