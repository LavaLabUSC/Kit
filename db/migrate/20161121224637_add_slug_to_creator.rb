class AddSlugToCreator < ActiveRecord::Migration
  def change
    add_column :creators, :slug, :string
  end
end
