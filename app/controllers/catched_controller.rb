class CatchedController < ApplicationController
  

  def index
  	@user = current_user
  end

  def raise_level
  	@user 	= current_user
  	@id 	= params[:id]

  	x = @user.caughts.find(@id)
  	x.pokelevel = 
  		if x.pokelevel
  			x.pokelevel + 1
  		else
  			1
  		end
  	x.save

  	redirect_to(catched_index_path)

  end

end
