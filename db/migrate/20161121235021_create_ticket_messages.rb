class CreateTicketMessages < ActiveRecord::Migration
  def change
    create_table :ticket_messages do |t|
      t.integer :ticket_id
      t.integer :user_id
      t.text :content

      t.timestamps null: false
    end
  end
end
