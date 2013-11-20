class RemoveAttachment < ActiveRecord::Migration
  def change
    remove_columns(:documents, :doc_file_name, :doc_content_type, :doc_file_size, :doc_updated_at)
  end
end
