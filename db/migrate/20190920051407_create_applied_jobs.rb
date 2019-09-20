class CreateAppliedJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :applied_jobs do |t|
      t.string :role
      t.string :city
      t.string :state
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
