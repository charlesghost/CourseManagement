class CreateCohorts < ActiveRecord::Migration[5.1]
  def change
    create_table :cohorts do |t|
      t.string :cohort_name
      t.string :discipline_id

      t.timestamps
    end
  end
end
