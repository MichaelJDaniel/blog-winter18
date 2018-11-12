class PagesController < ApplicationController
  def index
    @pages = Page.all
    ##render index----done by default
  end

  def show
    @page = Page.find(params[:id])
  end

  def create
  end
end
