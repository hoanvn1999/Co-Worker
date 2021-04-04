class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :code
      t.integer :status, default: 0
      t.text :description

      t.timestamps
      t.belongs_to :space, foreign_key: true
    end
  end
end
