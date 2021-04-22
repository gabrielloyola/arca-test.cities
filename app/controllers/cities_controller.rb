# frozen_string_literal: true

# Controller for cities related actions
class CitiesController < ApplicationController
  def index
    @cities = load_cities

    respond_to do |format|
      format.html
      format.json do
        render json: @cities
      end
    end
  end

  private

  def load_cities
    name_filter = "name ILIKE '%#{params['name']}%'" if params['name'].present?
    state_filter = { states: { name: params['state'] } } if params['state'].present?

    City.includes(:state)
        .where(state_filter)
        .where(name_filter)
  end
end
