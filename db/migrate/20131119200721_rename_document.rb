class RenameDocument < ActiveRecord::Migration
  def change
    rename_column :documents, :document_file_name, :doc_file_name
    rename_column :documents, :document_content_type, :doc_content_type
    rename_column :documents, :document_file_size, :doc_file_size
    rename_column :documents, :document_updated_at, :doc_updated_at
  end
end
