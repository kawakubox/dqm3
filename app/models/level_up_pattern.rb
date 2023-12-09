class LevelUpPattern < ApplicationRecord
  include Lineage

  validates :name, presence: true
end
