class ListsController < ApplicationController
  def new
    @list = List.new(name: Time.now.strftime("%Y%m%d%H%M%S"))
  end
end
