class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :organization_id
      t.string :title
      t.text :content
      t.integer :ticket_category_id
      t.integer :ticket_status_id
      t.string :contact

      t.timestamps null: false
    end
  end
end
