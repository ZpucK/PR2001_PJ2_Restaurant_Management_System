class MenusController < ApplicationController
	def index
		@menus = Menu.all
	end
	def show
		@menus = @menu.dishes

	end
end