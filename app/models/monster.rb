class Monster < ApplicationRecord
  enum :lineage, {
    slime: 'スライム',
    dragon: 'ドラゴン',
    nature: 'しぜん',
    beast: 'けもの',
    material: 'ぶっしつ',
    deamon: 'あくま',
    undead: 'しりょう'
  }, prefix: true
  enum :rank, { s: 'S', a: 'A', b: 'B', c: 'C', d: 'D', e: 'E', f: 'F', g: 'G' }, prefix: true

  has_many :monster_growths

  alias :growths :monster_growths

  validates :lineage, presence: true
  validates :name, presence: true
  validates :rank, presence: true
end
