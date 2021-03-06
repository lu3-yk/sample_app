class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to'/home/top'
  end

  def show
  end
  private

  def list_params
    params.require(:list).permit(:title,:body)
  end
end
