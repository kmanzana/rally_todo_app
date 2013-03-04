class StaticPagesController < ApplicationController
  def home
    @list = List.new(name: Time.now.strftime("%Y%m%d%H%M%S"))

    default_items = ["Add a to do task",
                     "Mark a task as complete",
                     "Save your to do list"]

    default_items.each do |item|
      @list.items.build(name: item)
    end

    @list.items.build # add one more new one

  end
end
