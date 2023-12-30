# frozen_string_literal: true

class GrowthTableComponentPreview < ViewComponent::Preview
  def default
    render(GrowthTableComponent.new(monster_growths: "monster_growths"))
  end
end
