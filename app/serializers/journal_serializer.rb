class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject
  belongs_to :user_id
end
