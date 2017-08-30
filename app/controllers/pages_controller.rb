class PagesController < ApplicationController

  # defines welcome method
  def welcome
    # render :about <-- would render 'about.erb' file on the welcome page. the render method is equivalent to running erb :about.
  end

  def about
  end

end
