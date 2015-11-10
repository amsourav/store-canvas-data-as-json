class AddCommentToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotations, :comment, :text
  end
end
