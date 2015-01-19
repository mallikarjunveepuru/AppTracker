class App

  include Mongoid::Document

  field :file_name, type: String
  field :date_created, type: Date
  field :location, type: String
  field :description, type: String
  field :reference, type: String

  validates :file_name, presence: true
  validates :location, presence: true

  embeds_one :deploy
  accepts_nested_attributes_for :deploy

end

