Given("two users are created") do
  User.create(name: "Lenard")
  User.create(name: "David")
end

Given("I visit transactions page") do
  visit(root_path)
end

Given("choose amount recipient and given of the money") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I make transaction") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can see that transaction is successfully finished") do
  pending # Write code here that turns the phrase above into concrete actions
end
