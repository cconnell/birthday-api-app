class BirthdaysController < ApplicationController

  def index
    @birthdays = Birthday.all
  end

  def create
    @birthday = Birthday.create(first_name: params[:first_name], last_name: params[:last_name], gift: params[:gift])

    render :show
  end

  def show
    @birthday = Birthday.find(params[:id])
  end

  def update
    @birthday = Birthday.find(params[:id])

    @birthday.update(
      first_name: params[:first_name] || @birthday.first_name,
      last_name: params[:last_name] || @birthday.last_name
      )

    render :show
  end

  def destroy
    @birthday = Birthday.find(params[:id])
    @birthday.destroy

    # redirect_to "/birthdays.json"  
    render json: { message: "Birthday Destroyed"}
      
  end
    

end
