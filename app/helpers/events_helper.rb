module EventsHelper
  def event_params
    params.require(:event).permit(:name, :date, :location, :description, :user_id)
  end
end

def show_event; end
