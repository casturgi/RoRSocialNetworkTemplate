class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :age, :integer
    add_column :users, :school, :string
  end
end
