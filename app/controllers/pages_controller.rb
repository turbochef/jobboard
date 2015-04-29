class PagesController < ApplicationController
	before_action :authenticate_student!

  def home
  	@jobs = Job.all.order
  end
end
