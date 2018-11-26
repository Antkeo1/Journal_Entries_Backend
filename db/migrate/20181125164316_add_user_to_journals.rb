# frozen_string_literal: true

class AddUserToJournals < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :journals, foreign_key: true
  end
end
