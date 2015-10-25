class AddSubmitterToResource < ActiveRecord::Migration
  def change
    add_column :resources, :name_of_submitter, :string
    add_column :resources, :reviewer_name, :string
    add_column :resources, :date_reviewed, :time
    add_column :resources, :reviewer_comment, :text
  end
end
