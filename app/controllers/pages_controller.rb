class PagesController < ApplicationController
  #add_breadcrumb "Home", :root_path
  before_action :authenticate_user!, :except => :show

  def index
    @page_title = "Pages"
    @pages = Page.all
  end

  def show
    #@page = Page.find(params[:id])
    @page = Page.where(:permalink => params[:permalink], :visible => true).first
    if @page.present?
      @page_title = @page.title
      
    end
    if @page.nil?
      redirect_to(:action => 'index')
    else
    end
  end

  def new
    @page_title = 'New Page'
    @page = Page.new
    #add_breadcrumb @page_title, new_page_path
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to pages_path, notice: "The Page has been saved in our database!" and return
    else
      @page_title = 'New Page'
      #add_breadcrumb @page_title, new_page_path
      render 'new'
    end
  end

  def edit
    @page_title = 'Edit Page'
    @page = Page.find(params[:id])
    #add_breadcrumb @page_title, edit_page_path
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(page_params)
      redirect_to pages_path, notice: "The Page has been updated in our database!" and return
    else
      @page_title = 'Edit Page'
      #add_breadcrumb @page_title, edit_page_path
      render 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_path, alert: "The Page has been deleted from our database!" and return
  end

  def page_params
    params.require(:page).permit(:name, :title, :body, :visible, :permalink, :home)
  end
end
