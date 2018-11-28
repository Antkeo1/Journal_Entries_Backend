class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :text
  belongs_to :user_id
end
