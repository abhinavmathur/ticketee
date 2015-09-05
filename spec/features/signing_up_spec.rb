require "spec_helper"

feature "Signing up" do
    scenario "Successful signing up" do
        visit '/'
        click_link 'Sign Up'        
        fill_in "Email", with: "raaaaj5000@yahoo.co.in"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Sign up"
        expect(page).to have_content('You have signed up successfully.')
    end
end