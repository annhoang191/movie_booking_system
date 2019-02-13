class StaticPagesController < ApplicationController
  def home
    @movie = Movie.first
  end
end
