class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.references :employer, foreign_key: true
      t.references :applicant, foreign_key: true
    end
  end
end
