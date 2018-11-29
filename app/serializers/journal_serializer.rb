class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :text
end
