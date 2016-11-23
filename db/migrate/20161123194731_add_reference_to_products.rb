class AddReferenceToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :video, index: true
  end
end
