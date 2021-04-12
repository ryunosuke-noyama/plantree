class MembersController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @member= Member.new
  end

  def create
    @company = Company.find(params[:company_id])
    @member= Member.new(member_params)
    if @member.save
      redirect_to company_path(@company.id)
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @member = Member.find(params[:id])
  end

  private
  def member_params
    params.require(:member).permit(:member_name).merge(company_id: @company.id)
  end
end
