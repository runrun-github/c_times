class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @users = @event.users
    #@monday_1_count = @event.users.where(monday_1: true).count
    #@monday_2_count = @event.users.where(monday_2: true).count
    #@monday_lunch_count = @event.users.where(monday_lunch: true).count
    days = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
    time_slots = ["1", "2", "lunch", "3", "4", "5", "6", "night"]

    @time_slots_in_japanese = {
      "1" => "1限",
      "2" => "2限",
      "lunch" => "昼休み",
      "3" => "3限",
      "4" => "4限",
      "5" => "5限",
      "6" => "6限",
      "night" => "夜間"
    }

    @counts = {}

    days.each do |day|
      time_slots.each do |slot|
        count_name = "#{day}_#{slot}_count"
        @counts[count_name] = @event.users.where("#{day}_#{slot}": true).count
      end
    end

  end
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
  
    if params[:delete_key] == "aidstool2"
      # 依存するユーザーを削除
      @event.users.destroy_all
      @event.destroy
      redirect_to events_path
    else
      flash[:alert] = "削除キーが間違っています。"
      redirect_to @event
    end
  end

  private
    def event_params
      params.expect(event: [ :name , :description ])
    end
end
