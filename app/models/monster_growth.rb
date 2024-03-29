class MonsterGrowth < ApplicationRecord
  belongs_to :monster

  validates :level, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :hp, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :mp, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :attack, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :defence, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :speed, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :intelligence, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.table_items(monster:, to: 99)
    range = 1..to
    growths = MonsterGrowth.where(monster: monster, level: range)
    range.map do |i|
      growths.find_by(level: i) || MonsterGrowth.new(monster: monster, level: i)
    end
  end
end
