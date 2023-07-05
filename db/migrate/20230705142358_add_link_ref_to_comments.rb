class AddLinkRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :link, null: false, foreign_key: true
  end
end
