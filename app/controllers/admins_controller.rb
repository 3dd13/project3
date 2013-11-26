# class AdminsController < ApplicationController

# 	respond_to :json

# 	def index
# 		@admins =  params[:id] ? Admin.where ('id = ?', params[:id]) : Admin.all

# 		# render json: @admins
# 	end

# 	def create
# 	end

# 	def update
# 	end

# 	def destroy
# 	end


# end


class AdminsController < ApplicationController
  
  respond_to :json
  
  def index
    @admins = params[:id] ? Admin.where('id = ?', params[:id])  : Admin.all
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
end