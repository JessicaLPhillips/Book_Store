class AdminController < ApplicationController
before_action :authenticate_user!
before_action :verify_admin
  def show
  end

private
	def verify_admin
		unless current_user.admin?
			redirect_to root_path
		end
	end
end
