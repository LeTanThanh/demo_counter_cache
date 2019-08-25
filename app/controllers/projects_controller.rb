class ProjectsController < ApplicationController
  def index
    @projects = Project.all.includes(:phases)
  end
end
