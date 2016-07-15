require "spec_helper"

module TicTacToe
  describe Player do
    context "#initialize" do
      it "raises an exception when initialized with {}" do
        expect { Player.new({}) }.to raise_error KeyError
      end

      it "does not raise an exception when initialized with a valid input hash" do
        input = { color: "X", name: "Someone" }
        expect { Player.new(input) }.not_to raise_error
      end
    end

    context "#color" do
      it "returns the color" do
        input = { color: "X", name: "Someone" }
        player = Player.new(input)
        expect(player.color).to eq "X"
      end
    end

    context "#name" do
      it "returns the player's name" do
        input = { color: "X", name: "Someone" }
        player = Player.new(input)
        expect(player.name).to eq "Someone"
      end
    end
  end
end
