Given(/^I'm on the Amazon homepage$/) do
  @b.goto "amazon.co.uk"
end

When(/^I can enter "(.*?)" into the search box$/) do |search|
  @b.text_field(id: "twotabsearchtextbox").set search
end

When(/^I can press go$/) do
  @b.button(class: "nav-submit-input").when_present.click
end

Then(/^I can see some search results$/) do
  expect(@b.ul(id: "s-results-list-atf").when_present.lis.size).to be > 0
end
Then(/^the first result should contain the phrase "(.*?)"$/) do |word|
  text = @b.ul(id: "s-results-list-atf").when_present.lis.first.text.capitalize
  expect(text).to include(word.capitalize)
end

Then(/^the first result should be "(.*?)"$/) do |price|
  price = @b.span(class: "a-size-small a-color-price a-text-bold").text
  expect(price).to include(price)
end