class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.text :body
      t.belongs_to :user, class_name: "user", foreign_key: "user_id"
      t.timestamps
    end
  end
end
