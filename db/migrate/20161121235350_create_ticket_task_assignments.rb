class CreateTicketTaskAssignments < ActiveRecord::Migration
  def change
    create_table :ticket_task_assignments do |t|
      t.integer :ticket_task_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
