# frozen_string_literal: true

# Migration to create states table
class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name
      t.string :initials

      t.timestamps
    end
  end
end
