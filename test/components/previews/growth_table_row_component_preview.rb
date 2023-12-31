# frozen_string_literal: true

class GrowthTableRowComponentPreview < ViewComponent::Preview
  def default
    render(GrowthTableRowComponent.new(monster_growth: "monster_growth"))
  end
end
