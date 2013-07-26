class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.timestamps
      t.integer :project_id
      t.string :reason
      t.string :comment
      t.integer :user_id
    end
  end
end
