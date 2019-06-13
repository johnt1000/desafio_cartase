class PagesController < ApplicationController
  before_action :set_project, only: [:show_project]
  def index
    @projects = Project.all
  end
  
  def show_project
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end
end
