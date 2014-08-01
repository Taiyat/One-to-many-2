class ChangetoArtistId < ActiveRecord::Migration
  def change
    remove_column :songs, :artists, :string 
    add_column :songs, :artists_id, :integer    

  end
end
