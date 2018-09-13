class Applicant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :job_applications
  has_many :employers, through: :job_applications

  validates_presence_of :name

  def can_apply_to?(employer)
    @employer_ids ||= self.employers.pluck(:id)
    !@employer_ids.include?(employer.id)
  end

end
