class UsersController < ApplicationController
  def new
    @event = Event.find(params[:event_id]) 
    @user = @event.users.new 
    @time_slots_in_japanese = {
      "1" => "1限", "2" => "2限", "3" => "3限", "4" => "4限", "5" => "5限", "6" => "6限", "night" => "夜間" ,"lunch" => "昼休み"
    }
  end

  def create
    @event = Event.find(params[:event_id]) 
    @user = @event.users.new(user_params)  

    if @user.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity 
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :user_name, :event_id, 
      :sunday_1, :sunday_2, :sunday_lunch, :sunday_3, :sunday_4, :sunday_5, :sunday_6, :sunday_night,
      :monday_1, :monday_2, :monday_lunch, :monday_3, :monday_4, :monday_5, :monday_6, :monday_night,
      :tuesday_1, :tuesday_2, :tuesday_lunch, :tuesday_3, :tuesday_4, :tuesday_5, :tuesday_6, :tuesday_night,
      :wednesday_1, :wednesday_2, :wednesday_lunch, :wednesday_3, :wednesday_4, :wednesday_5, :wednesday_6, :wednesday_night,
      :thursday_1, :thursday_2, :thursday_lunch, :thursday_3, :thursday_4, :thursday_5, :thursday_6, :thursday_night,
      :friday_1, :friday_2, :friday_lunch, :friday_3, :friday_4, :friday_5, :friday_6, :friday_night,
      :saturday_1, :saturday_2, :saturday_lunch, :saturday_3, :saturday_4, :saturday_5, :saturday_6, :saturday_night
    )
  end
  
end
