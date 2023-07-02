require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit accounts_login_path
    
  
    assert_selector "h1", text: "Login"
  end
end
