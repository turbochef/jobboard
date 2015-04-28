class PagesController < ApplicationController
  def home
  	@jobs = Job.all.order
  end
end
