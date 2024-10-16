require 'faker'

# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

## User Seeds for local dev testing and setup.

LOCATIONS = ["Nairobi", "Mombasa",    # Kenya
          "Kampala", "Entebbe",       # Uganda
          "Dar es Salaam", "Arusha",  # Tanzania
          "Bujumbura", "Gitega",      # Burundi
          "Kigali", "Butare"]         # Rwanda

def build_user
  user = User.new

  user.email = Faker::Internet.email
  pass = Faker::Internet.password
  user.password = pass
  user.password_confirmation = pass
  user.github_username = Faker::Internet.username
  user.name = Faker::Name.name
  user.phone_number = Faker::Number.number(digits: 10)

  user.save if user.valid?
end

def build_country
  country = Country.new

  country.name = %w(Kenya Uganda Tanzania Rwanda Burundi).sample

  country.save if country.valid?
end


def build_chapter
  chapter = Chapter.new

  chapter.name = ["#{Faker::Name.middle_name}", "Chapter"].join(" ")
  chapter.country = Country.all.sample
  chapter.location = LOCATIONS.sample
  chapter.description = "The East African chapter in #{chapter.location}"

  chapter.save if chapter.valid?
end

users = []
countries = []
chpaters = []

10.times do 
  build_user
end

5.times do
  build_country
end

10.times do
  build_chapter
end