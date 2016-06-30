class HomeController < ApplicationController
  def index
      @page = Page.find_by_home(true)
    if @page.present?
      @page_title = @page.title
    end
  end
end
