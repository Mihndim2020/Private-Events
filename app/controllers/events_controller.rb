def new
  @event = Event.new
end

def create
  @event = current_user.events.build(event_params)

  if @event.save
    flash[:success] = "Event '#{@event.name}' created!"
    redirect_to @event
  else
    flash[:alert] = "Something Happened!"
    render 'new'
  end
end

end