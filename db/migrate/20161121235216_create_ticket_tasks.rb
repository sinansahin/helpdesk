class CreateTicketTasks < ActiveRecord::Migration
  def change
    create_table :ticket_tasks do |t|
      t.integer :ticket_id
      t.integer :user_id
      t.text :content
      t.boolean :is_done

      t.timestamps null: false
    end
  end
end
