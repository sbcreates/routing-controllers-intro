class PagesController < ApplicationController

  # defines welcome method
  def welcome
    # render :about <-- would render 'about.erb' file on the welcome page. the render method is equivalent to running erb :about.
    @header = "Hello and Welcome"
  end

  def about
    @header = "About Us"
  end

  def contest
    @header = "Contest Page"
  end

end
