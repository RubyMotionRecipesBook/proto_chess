describe "ability" do
  it "has both delta_x and delta_y" do
    ability = Ability.new(:delta_x => 0, :delta_y => 1)
    ability.delta_x.should == 0
    ability.delta_y.should == 1
  end
end