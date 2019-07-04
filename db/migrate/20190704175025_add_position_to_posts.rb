class AddPositionToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :position, :integer, default: 0
  end
end
