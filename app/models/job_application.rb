class JobApplication < ApplicationRecord
  belongs_to :employer
  belongs_to :applicant

end