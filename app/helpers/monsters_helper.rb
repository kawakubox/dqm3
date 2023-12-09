module MonstersHelper
  def build_rank_pairs
    Monster.ranks.map { |rank| [rank[1], rank[0]] }
  end
end
