class SkillGroup < ApplicationRecord
  has_many :skill_sets

  validates :name, presence: true
end
