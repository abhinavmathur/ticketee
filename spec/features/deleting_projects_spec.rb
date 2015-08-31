require 'spec_helper'

feature "Deleting Project" do
    before do
        FactoryGirl.create(:project,name: "TextMate 2")
        visit '/'
        click_link "TextMate 2"
        click_link "Delete Project"
    end
    
    scenario "Deleting a project" do
        expect(page).to have_content("Project has been successfully deleted")
        visit '/'
        expect(page).to have_no_content("TextMate 2")
    end
end