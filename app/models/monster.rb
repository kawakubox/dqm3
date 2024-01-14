class Monster < ApplicationRecord
  include Lineage

  enum :rank, { x: 'x', s: 's', a: 'a', b: 'b', c: 'c', d: 'd', e: 'e', f: 'f', g: 'g' }, prefix: true

  belongs_to :level_up_pattern, optional: true
  belongs_to :specific_skill, class_name: 'SkillGroup', optional: true

  has_many :monster_growths

  alias :growths :monster_growths

  validates :name, presence: true
  validates :rank, presence: true
  validate :validate_level_up_pattern, if: -> { level_up_pattern_id.present? }

  private

  def validate_level_up_pattern
    if LevelUpPattern.find(level_up_pattern_id).lineage != lineage
      errors.add(:level_up_pattern, 'LevelUpPattern の系統が一致していません')
    end
  end
end
