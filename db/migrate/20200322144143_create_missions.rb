class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :title
      t.text :content
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :priority     , default: "medium"
      t.string :status       , default: "pending" 
      t.string :tags

      t.timestamps
    end
  end
end
