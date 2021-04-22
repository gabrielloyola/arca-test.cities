class CitiesController < ApplicationController
  def index
    name_filter = "name ILIKE '%#{params['name']}%'" if params['name'].present?
    state_filter = { states: { name: params['state'] } } if params['state'].present?

    @cities = City.includes(:state)
                  .where(state_filter)
                  .where(name_filter)
  end
end
