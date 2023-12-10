module Lineage
  extend ActiveSupport::Concern

  TYPES = {
    slime: 'slime',
    dragon: 'dragon',
    nature: 'nature',
    beast: 'beast',
    material: 'material',
    demon: 'demon',
    undead: 'undead'
  }

  included do
    enum :lineage, TYPES, prefix: true

    validates :lineage, presence: true
  end

  def self.select_pairs
    TYPES.map { |type| [I18n.t("lineage.#{type[1]}"), type[0]] }
  end

  def lineage_translate_key
    "lineage.#{lineage}"
  end
end
