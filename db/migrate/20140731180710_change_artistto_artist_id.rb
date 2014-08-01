class ChangeArtisttoArtistId < ActiveRecord::Migration
  def change
    remove_column :song, :artists, :string 
    add_column :song, :artists_id, :integer
  end
end
