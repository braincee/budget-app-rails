class AddUserRefToGroup < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, null: false, foreign_key: true, on_delete: :cascade
  end
end
