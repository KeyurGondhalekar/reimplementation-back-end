# frozen_string_literal: true

class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.bigint :parent_id
      t.integer :default_page_id

      t.timestamps
    end

    # Add foreign key to parent role
    add_foreign_key :roles, :roles, column: :parent_id, on_delete: :cascade
  end
end
