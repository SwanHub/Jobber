class AddStatusesToJobs < ActiveRecord::Migration[5.2]
  def change
      add_column :applied_jobs, :ghost, :boolean, default: true
      add_column :applied_jobs, :reject, :boolean, default: true
      add_column :applied_jobs, :personal_contact, :boolean, default: false
      add_column :applied_jobs, :interview, :boolean, default: false
      add_column :applied_jobs, :intvw_rounds, :integer
      add_column :applied_jobs, :offer, :boolean, default: false
      add_column :applied_jobs, :compensation, :integer
  end
end
