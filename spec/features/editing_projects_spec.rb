require 'spec_helper'

feature "Editing a page" do
    before do 
        FactoryGirl.create(:project, name: "TextMate 2")
        
        visit '/'
        click_link "TextMate 2"
        click_link "Edit Project"
    end
    scenario "Editing a previous form" do
       
        fill_in "Name", with: "TextMate 2 beta"
        click_button "Update Project"
        
        expect(page).to have_content("Project has been successfully updated.")
    end
    
    scenario "Edited form should have valid name" do
        
        fill_in "Name", with: ""
        click_button "Update Project"
        expect(page).to have_content("Project was NOT successfully edited")
    end
end