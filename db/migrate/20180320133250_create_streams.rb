class CreateStreams < ActiveRecord::Migration[5.1]
  
  def change
    create_table :streams do |t|
      t.string :stream_name
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
