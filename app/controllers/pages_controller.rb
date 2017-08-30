class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  # defines welcome method
  def welcome
    # render :about <-- would render 'about.erb' file on the welcome page. the render method is equivalent to running erb :about.
    @header = "Hello and Welcome"
  end

  def about
    @header = "About Us"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    @header = "Contest Page"
    redirect_to '/welcome'
  end

  # def kitten
  #   requested_size = params[:size]
  #   @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  # end
  #
  # def kittens
  #   requested_size = params[:size]
  #   @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  # end

  # **---so it's not repeated in the code, we're combining the above that is commented out into the method 'set_kitten_url' and will call on that method in both the kitten and kittens method.
  # def kitten
  #   set_kitten_url
  # end
  #
  # def kittens
  #   set_kitten_url
  # end

  # **---with the before_action at the top defined, we don't need the kitten/kittens method
  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end



end
