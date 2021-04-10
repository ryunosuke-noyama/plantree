class CompaniesController < ApplicationController
  # before_action :authenticate, only: [:show]
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to root_path
    else
      render :new
    end
  end 

  def show
    @company = Company.find(params[:id])
  end

  private

  def company_params
    params.require(:company).permit(:company_name, :password)
  end

  def authenticate
    @company = Company.find(params[:id])
    companies_id = Company.find(params[:id])
    if companies_id && companies_id.authenticate(params[:password])
      redirect_to company_path(company.id)
    else
      render 'companies_with_password'
    end
  end
end
