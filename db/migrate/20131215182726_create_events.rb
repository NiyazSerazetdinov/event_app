class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.date :scheduled_at
      t.string :recurrence
      t.string :description

      t.timestamps
    end
  end
end
