class Search
  def self.search_games(search_term)
    return [] if search_term.empty?
    Game.where("name Like ?", "%#{search_term}%").where("plays > ?", 0).order("plays DESC")
  end
end
