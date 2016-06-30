class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.text :body
      t.boolean :visible, null: false, default: true

      t.timestamps null: false
    end
  end
end
