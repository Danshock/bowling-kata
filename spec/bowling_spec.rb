require_relative "../lib/bowling"
RSpec.describe Game do
  
  before(:each) do
    @game = Game.new
  end
 
  it "creates a new game" do
    game = Game.new
  end

  it "can roll gutter game" do
    @game = Game.new
      20.times { @game.roll(0) }
        expect(@game.score).to eql(0)
  end

  it "can roll all ones" do
    20.times { @game.roll(1) }
      expect(@game.score).to eql(20)
  end

  it "can roll a spare" do
  	@game.roll(5)
  	  @game.roll(5)
  	    @game.roll(3)
  	      17.times {@game.roll(0) }
  	        expect(@game.score).to eql(16)
  end

  it "can roll a perfect game" do
  	12.times { @game.roll(10) }
  	  expect(@game.score).to eq(300)
  end

  it "can roll all spares" do
  	21.times { @game.roll(5) }
  	  expect(@game.score).to eq(150)
  end
end