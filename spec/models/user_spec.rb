require "spec_helper"

describe "User" do
    describe "Passwords" do
        it "needs a password and confirmation to save" do
      u = User.new(name: "steve")

      u.save
      expect(u).to_not be_valid

      u.password = "password"
      u.password_confirmation = ""
      u.save
      expect(u).to_not be_valid

        end
        
        it "needs password and confirmation to match" do
            u = User.new(name: "Abhinav",password: "hunter2",password_confirmation: "hunter")
            expect(u).to_not be_valid
        end
    end
    
    describe "authentication" do
        let(:user) {
            User.create(name: "steve", password: "hunter2", password_confirmation: "hunter2")
        }
        
        it "authenticates with a current password" do
            expect(user.authenticate("hunter2")).to be
        end
        
        it "does not authenticate with invaild password" do
            expect(user.authenticate("hunter")).to_not be
        end
    end
end