# frozen_string_literal: true

class CountriesController < ApplicationController
  before_action :set_country, only: %i[show]

  # GET /countries or /countries.json
  def index
    @countries = Country.all
  end

  # GET /countries/1 or /countries/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @country = Country.find(params[:id])
  end
end
