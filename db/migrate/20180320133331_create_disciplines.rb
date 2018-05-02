class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.string :discipline_name
      t.string :stream_id

      t.timestamps
    end
  end
end
