# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Discuss with your coach !"
  end

   test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "asking a question yield a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello ?"
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "saying Im going to work yield a positive response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    assert_text "Great!"
    take_screenshot
  end

end
