require "rails_helper"

describe GamesController do
  describe "POST create" do
    it "shouldn't create a new game with invalid input" do
      post :create, game: { name: "", category: ["", "", "", "", "", ""] }
      expect(Game.count).to eq(0)
    end
    it "should render new template for invalid input" do
      post :create, game: { name: "", category: ["", "", "", "", "", ""] }
      expect(response).to render_template :new
    end
    it "should create a new game with valid input" do
      post :create, game: { name: "Presidents", category: ["Name", "Name", "Name", "Name", "Name", "Name"] }
      expect(Game.count).to eq(1)
    end
    it "should redirect to root path with valid input" do
      post :create, game: { name: "Presidents", category: ["Name", "Name", "Name", "Name", "Name", "Name"] }
      expect(response).to redirect_to Game.first
    end
    it "should create six categories with valid input" do
      post :create, game: { name: "Presidents", category: ["Name", "Name", "Name", "Name", "Name", "Name"] }
      expect(Category.count).to eq(6)
    end
  end
end
