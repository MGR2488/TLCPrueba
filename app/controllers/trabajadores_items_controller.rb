class TrabajadoresItemsController < ApplicationController
	before_action :set_trabajadores_list
	def create
	 @trabajadores_item = @trabajadores_list.trabajadores_items.create(trabajadores_item_params)
	 redirect_to @trabajadores_list
	end

	def destroy
	 @todo_item = @todo_list.todo_items.find(params[:id])
	 if @todo_item.destroy
	  flash[:success] = "Todo List item was deleted."
	 else
	  flash[:error] = "Todo List item could not be deleted."
	 end
	 redirect_to @todo_list 
	end
	
	private
	def set_trabajadores_list
	 @trabajadores_list = TrabajadoresList.find(params[:trabajadores_list_id])
	end
	def trabajadores_item_params
	 params[:trabajadores_item].permit(:content)
	end
end
