module Lineage
  extend ActiveSupport::Concern

  TYPES = {
    slime: 'スライム',
    dragon: 'ドラゴン',
    nature: 'しぜん',
    beast: 'けもの',
    material: 'ぶっしつ',
    deamon: 'あくま',
    undead: 'しりょう'
  }

  included do
    enum :lineage, TYPES, prefix: true

    validates :lineage, presence: true
  end

  def self.select_pairs
    TYPES.map { |type| [type[1], type[0]] }
  end
end
