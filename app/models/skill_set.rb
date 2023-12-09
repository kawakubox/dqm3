class SkillSet < ApplicationRecord
  belongs_to :skill_group
  belongs_to :skill

  validates :point, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
