class AddColumnParentIdToCateogry < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :parent, index: true, unsigned: true, default: nil, after: :state
    add_foreign_key :categories, :categories, column: :parent_id
  end
end
