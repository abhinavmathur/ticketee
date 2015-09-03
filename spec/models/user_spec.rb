require "spec_helper"

describe User do
    describe "passwords" do
        it "needs a password and a confirmation to save" do
            u = User.new(name: "Steve")
            u.save
            expect(u).to_not be_valid
            
            u.password = "password"
            u.password_confirmation = ""
            u.save
            expect(u).to_not be_valid
            
            u.password_confirmation = "password"
            u.save
            expect(u).to be_valid
        end
        
        it "needs password and confirmation to match" do
            u = User.create(name: "Steve", password: "hunter2", password_confirmation: "hunter")
            expect(u).to_not be_valid
        end
        
        describe "Authentication" do
            let(:user) { User.create(name:"Steve",password: "hunter2", password_confirmation: "hunter2")}
            it "authenticates with correct password" do
                expect(user.authenticate("hunter2")).to be
            end
            
            it "does not authenticate with correct password" do
                expect(user.authenticate("hunter1")).to_not be
            end
        end
    end
end