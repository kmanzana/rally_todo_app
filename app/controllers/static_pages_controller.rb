class StaticPagesController < ApplicationController
  def home
    redirect :controller => "lists", :action => "new"
  end
end
