class AddPublishFlagToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :publish, :boolean, default: false
  end
end
