class CreateUserTaskAssignments < ActiveRecord::Migration
  def change
    create_table :user_task_assignments do |t|
      t.string :task_id
      t.string :user_id

      t.timestamps
    end
  end
end
