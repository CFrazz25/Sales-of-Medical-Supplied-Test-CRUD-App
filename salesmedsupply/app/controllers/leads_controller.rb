class LeadsController < ApplicationController
  def index
    @leads = Lead.all 
  end

  def new
  end

  def create
    @user = Lead.new(lead_params)
    if @user.save
      redirect_to home_index_path
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def edit
    @user = Lead.find_by(id: params[:id])
  end

  def show
    @user = Lead.find_by(id: params[:id])
  end

  def update
    @user = Lead.find_by(id: params[:id])
    
      if @user.update_attributes(lead_params)
        redirect_to root_path
      else
        @errors = @user.errors.full_messages
        render :edit
      end
    #end
  end

  

  private
  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :phone_number, :disposition, :status, :center_code)
  end
end
