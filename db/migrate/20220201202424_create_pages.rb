class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.integer :position
      t.string :permalink
      t.boolean :visible
      t.text :context
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
