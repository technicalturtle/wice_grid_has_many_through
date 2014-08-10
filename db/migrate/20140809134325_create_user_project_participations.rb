class CreateUserProjectParticipations < ActiveRecord::Migration
  def change
    create_table :user_project_participations do |t|
      t.string :project_id
      t.string :user_id

      t.timestamps
    end
  end
end
