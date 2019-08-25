class PhasesController < ApplicationController
  def index
    @phases = Phase.all.includes(:tasks)
  end
end
