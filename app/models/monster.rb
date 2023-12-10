class Monster < ApplicationRecord
  include Lineage

  enum :rank, { s: 'S', a: 'A', b: 'B', c: 'C', d: 'D', e: 'E', f: 'F', g: 'G' }, prefix: true

  belongs_to :level_up_pattern
  belongs_to :specific_skill, class_name: 'SkillGroup'

  has_many :monster_growths

  alias :growths :monster_growths

  validates :name, presence: true
  validates :rank, presence: true
  validate :validate_level_up_pattern

  private

  def validate_level_up_pattern
    if LevelUpPattern.find(level_up_pattern_id).lineage != lineage
      errors.add(:level_up_pattern, 'LevelUpPattern の系統が一致していません')
    end
  end
end
