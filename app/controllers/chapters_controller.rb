# frozen_string_literal: true

class ChaptersController < ApplicationController
  include ActiveStorage::SetCurrent

  before_action :set_chapter, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[index show]

  # GET /chapters or /chapters.json
  def index
    @chapters = Chapter.all
  end

  # GET /chapters/1 or /chapters/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chapter
    @chapter = Chapter.find(params[:id])
  end
end
