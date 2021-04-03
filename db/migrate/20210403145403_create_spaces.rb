class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.float :price
      t.text :description

      t.timestamps
      t.belongs_to :user, foreign_key: true
    end
  end
end
