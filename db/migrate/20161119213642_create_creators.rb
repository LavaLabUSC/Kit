class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string :name
      t.string :twitter
      t.string :instagram
      t.string :youtube_id
      t.string :avatar
      t.text :bio

      t.timestamps null: false
    end
  end
end
