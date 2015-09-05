require "spec_helper"

<<<<<<< HEAD
feature "Profile Page" do
    scenario "Viewing Users" do
        user = FactoryGirl.create(:user)
        visit user_path(user)
=======
feature "Profile page" do
    scenario "viewing." do
        user = FactoryGirl.create(:user)
        
        visit user_path(user)
        
>>>>>>> signing-up
        expect(page).to have_content(user.name)
        expect(page).to have_content(user.email)
    end
end
<<<<<<< HEAD

feature "Editing Users" do
    scenario "Updating a project" do
        user = FactoryGirl.create(:user)
         visit user_path(user)
         
         click_link "Edit Profile"
         
         fill_in "Username", with: "new_username"
        click_button "Update Profile"
        expect(page).to have_content("Profile has been updated.")
    end
end
=======
    feature "Editing Users" do
        scenario "Updating a project" do
        user = FactoryGirl.create(:user)
        visit user_path(user)
        click_link "Edit Profile"
        fill_in "Username", with: "new_username"
        click_button "Update Profile"
        expect(page).to have_content("Profile has been updated.")
    end
end
>>>>>>> signing-up
