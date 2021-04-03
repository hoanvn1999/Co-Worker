class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :code
      t.float :area
      t.integer :status
      t.text :description

      t.timestamps
      t.belongs_to :space, foreign_key: true
    end
  end
end
