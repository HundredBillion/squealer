class AddUserToSqueal < ActiveRecord::Migration[6.0]
  def change
    add_reference :squeals, :user, foreign_key: true
  end
end
