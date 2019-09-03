class RenameUserToAuthor < ActiveRecord::Migration[5.2]
  def change
  	change_table :books do |t|
      t.remove_references :user
      t.belongs_to :author, foreign_key: true
    end
  end
end
