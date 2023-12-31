# frozen_string_literal: true

class GrowthTableRowComponent < ViewComponent::Base
  with_collection_parameter :monster_growth

  def initialize(monster_growth:, monster_growth_iteration:)
    @monster_growth = monster_growth
    @level = monster_growth_iteration.index + 1
  end
end
