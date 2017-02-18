require "rails_helper"

describe GamesController do
  describe "POST create" do
    it "shouldn't create a new game with invalid input" do
      post :create, game: { name: "" }
      expect(Game.count).to eq(0)
    end
    it "should render new template for invalid input" do
      post :create, game: { name: "" }
      expect(response).to render_template :new
    end
    it "should create a new game with valid input" do
      post :create, game: { name: "Presidents" }
      expect(Game.count).to eq(1)
    end
    it "should redirect to root path with valid input" do
      post :create, game: { name: "President" }
      expect(response).to redirect_to root_path
    end
  end
end
