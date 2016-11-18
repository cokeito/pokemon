class CaughtsController < ApplicationController
  
  def index
  	@user 		= current_user
  	@pokemons 	= Pokemon.all
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

  	redirect_to(caughts_path)

  end

  def create
  	params[:pokemon_ids].each do |pid|
  		current_user.caughts.build(pokemon_id: pid)
  	end
  	current_user.save

  	if current_user.save
  		redirect_to caughts_path
  	else
  		redirect_to caughts_path, notice: current_user.errors.join(', ')
  	end

  end


end
