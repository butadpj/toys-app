class CreateMyToys < ActiveRecord::Migration[6.1]
  def change
    create_table :my_toys do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
