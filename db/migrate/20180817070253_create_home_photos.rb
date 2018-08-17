class CreateHomePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :home_photos do |t|

      t.timestamps
    end
  end
end
