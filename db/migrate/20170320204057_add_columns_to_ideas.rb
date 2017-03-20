class AddColumnsToIdeas < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :idea_type, :integer
  end
end
