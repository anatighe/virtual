class AddAttachment < ActiveRecord::Migration
  def change
    add_attachment :documents, :doc
  end
end
