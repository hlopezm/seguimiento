class AddCategoryToElections < ActiveRecord::Migration[5.0]
  def change
    category = Category.create! nombre: "No category"
    add_reference :elections, :category, index: true, default: category.id
    add_foreign_key :elections, :categories
  end
end
