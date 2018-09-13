class HomeController < ApplicationController
  def index
    if current_applicant
      redirect_to(applicants_index_path)
    elsif current_employer
      redirect_to(employers_index_path)
    end
  end
end
