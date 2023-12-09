class Monster < ApplicationRecord
  include Lineage

  enum :rank, { s: 'S', a: 'A', b: 'B', c: 'C', d: 'D', e: 'E', f: 'F', g: 'G' }, prefix: true

  belongs_to :specific_skill, class_name: 'SkillGroup'

  has_many :monster_growths

  alias :growths :monster_growths

  validates :name, presence: true
  validates :rank, presence: true
end
