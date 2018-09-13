class EmployersController < ApplicationController
  def index
    @all_applicants = current_employer.applicants
  end
end
