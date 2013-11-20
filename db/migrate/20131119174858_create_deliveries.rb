class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :user_email
      t.string :recipient_email
      t.string :message

      t.timestamps
    end

    create_table :documents do |t|
      t.integer :delivery_id
      t.string :document_file_name
      t.string :document_content_type
      t.integer :document_file_size
      t.datetime :document_updated_at
      t.string :encrypted_token

      t.timestamps
    end
  end
end
