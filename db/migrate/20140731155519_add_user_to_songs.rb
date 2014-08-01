class AddUserToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :artists, :string
  end
end
