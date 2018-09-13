module ApplicantsHelper

  def apply_link(employer)
    link_to 'Apply',
            applicants_apply_to_employer_path + '?employer=' + employer.id.to_s,
            method: :post unless !current_applicant.can_apply_to?(employer)
  end
end
