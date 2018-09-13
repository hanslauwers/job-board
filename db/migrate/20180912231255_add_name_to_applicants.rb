class AddNameToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :name, :string
  end
end
