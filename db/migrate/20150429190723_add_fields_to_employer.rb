class AddFieldsToEmployer < ActiveRecord::Migration
  def change
    add_column :employers, :name, :string
    add_column :employers, :description, :text
    add_column :employers, :website, :string
    add_column :employers, :phone, :string
  end
end
