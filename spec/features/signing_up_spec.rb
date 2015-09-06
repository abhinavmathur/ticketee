require "spec_helper"

feature "Signing up" do
    scenario "Successful sign up" do
        
        visit '/'
        click_link "Sign Up"
        fill_in "Username", with: "raaaaj5000"
        fill_in "Email", with: "raaaaj5000@yahoo.co.in"
        fill_in "Password", with: "hunter"
        fill_in "Password confirmation", with: "hunter"
        click_button "Sign up"
        
        expect(page).to have_content("You have signed up successfully.")
    end
end