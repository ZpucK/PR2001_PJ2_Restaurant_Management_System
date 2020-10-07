class TablesController < ApplicationController
  def index
    @tables = Table.paginate(page: params[:page], per_page: 10)
  end

  def show
    @table = Table.find(params[:id])
  end
end
