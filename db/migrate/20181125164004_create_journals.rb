# frozen_string_literal: true

class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :subject
      t.text :text
      # t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
