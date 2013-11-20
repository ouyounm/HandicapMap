class DirectionsController < ApplicationController
  def landing_page
  end

  def route
    @direction = Direction.new
    @direction.start = params[:start]
    @direction.destination = params[:destination]

    if @direction.start.present? && @direction.destination.present?
      @routes = @direction.return_directions
      render 'route'
    else
      redirect_to root_url
    end
  end

end
