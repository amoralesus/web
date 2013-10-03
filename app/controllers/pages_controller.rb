class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  layout 'page'

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.recent
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :content)
    end
end
