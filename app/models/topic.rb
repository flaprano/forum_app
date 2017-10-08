class Topic
  include Mongoid::Document
  acts_as_nested_set dependent: :destroy
  validates :title, :message, presence: true

  field :title, type: String
  field :message, type: String
end
