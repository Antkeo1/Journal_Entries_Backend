# frozen_string_literal: true

class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :subject

      t.timestamps
    end
  end
end
