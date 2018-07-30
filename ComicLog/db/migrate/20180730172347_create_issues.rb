class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.integer :issue_number
      t.references :comic, foreign_key: true
      t.timestamps
    end
  end
end
