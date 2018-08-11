class ReportsController < ApplicationController

  def index
    @reports = Report.published
  end

  def show
  end

end
