class ChangeDefaultOnReject < ActiveRecord::Migration[5.2]
  def change
      remove_column :applied_jobs, :reject
      add_column :applied_jobs, :reject, :boolean
  end
end
