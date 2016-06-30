class AddHomeToPages < ActiveRecord::Migration
  def change
    add_column :pages, :home, :boolean, null: false, default: false
  end
end
