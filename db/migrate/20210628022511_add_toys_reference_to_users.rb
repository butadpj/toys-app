class AddToysReferenceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :my_toys, :user, index: true
  end
end
