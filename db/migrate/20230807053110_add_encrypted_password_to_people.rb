class AddEncryptedPasswordToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :encrypted_password, :string
  end
end
