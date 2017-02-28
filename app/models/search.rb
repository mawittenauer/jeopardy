class Search
  def self.search_games(search_term)
    Game.where("name Like ?", "%#{search_term}%")
  end
end
