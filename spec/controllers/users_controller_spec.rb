require "spec_helper"

describe UsersController do
  describe "GET new" do
    it "sets @user" do
      get :new
      expect(assigns(:user)).to be_new_record
      expect(assigns(:user)).to be_instance_of(User)  
    end
  end

  describe "POST create" do
    context "with valid input" do
      before do
        post :create, user: Fabricate.attributes_for(:user)
      end

      it "creates tbe user" do      
        expect(User.count).to eq(1)
      end

      it "redirects to the sign in page" do
        post :create, user: { email: "shachopin@gmail.com", password: "password", full_name: "Dawei Dai" }
        expect(response).to redirect_to sign_in_path
      end
    end

    context "without invalid input" do
      before do
        post :create, user: { password: "password", full_name: "Dawei Dai" }
      end
      it "does not create the user" do       
        expect(User.count).to eq(0)
      end

      it "renders the new template" do
        expect(response).to render_template :new
      end

      it "sets @user" do
        expect(assigns(:user)).to be_instance_of(User)
        expect(assigns(:user)).to be_new_record
      end
    end
  end

end