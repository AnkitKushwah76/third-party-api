class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.string :repo_name
      t.string :stargazers_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
