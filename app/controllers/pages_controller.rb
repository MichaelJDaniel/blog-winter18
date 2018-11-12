class PagesController < ApplicationController
  def index
    @pages = Page.all
    ##render index----done by default
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end
  
  def create 
    @page = Page.new(pages_params)
    @page = Page.new
    

    if (@page.save)
      redirect_to
    else
      render :new
    end
  end

  def edit 
    @page = Page.find(params[:id])
  end

  def update 
    @page = Page.find(params[:id])

    if @page.update(page_params)
    redirect_to pages_path
    else
      render :edit
    end
  end

    def destroy
      @page = Page.find(params[:id])

      
  private 
  def pages_params
    params.require(:page).permit(:title, :body, :author, :active)
  end
end
