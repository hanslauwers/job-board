class ApplicantsController < ApplicationController
  def index
    @all_employers = Employer.all
  end

  def apply_to_employer
    employer = Employer.find(params[:employer])
    current_applicant.employers << employer
    current_applicant.save!
    redirect_to(applicants_index_path)
  end
end
