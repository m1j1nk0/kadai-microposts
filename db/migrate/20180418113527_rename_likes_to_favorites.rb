class RenameLikesToFavorites < ActiveRecord::Migration[5.0]
  def change
    rename_table :likes, :favorites
  end
end
