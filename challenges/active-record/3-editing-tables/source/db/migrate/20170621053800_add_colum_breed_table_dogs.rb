class AddColumBreedTableDogs < ActiveRecord::Migration
	def change
    add_column :dogs, :breed, :string
  end
end
