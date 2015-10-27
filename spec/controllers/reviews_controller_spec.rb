require "spec_helper"

describe ReviewsController do
  describe "POST create" do
    let(:current_user) { Fabricate(:user) }
    let(:video) { Fabricate(:video) }

    context "with authenticated users" do
      before { session[:id] = current_user.id }

      context "with valid inputs" do
        before { post :create, review: Fabricate.attributes_for(:review), video_id: video.id }

        it "redirects to the videos show page" do
          expect(response).to redirect_to video
        end

        it "creates a review" do
          expect(Review.count).to eq(1)
        end

        it "create a review associated with the video" do
          expect(Review.first.video).to eq(video)
        end

        it "create a review associated with the signed in user" do
          expect(Review.first.user).to eq(current_user) 
        end
      end

      context "with invalid inputs" do
        it "does not create a review" do
          video = Fabricate(:video)
          post :create, review: {rating: 4}, video_id: video.id
          expect(Review.count).to eq(0) 
        end

        it "renders the views/show template" do
          video = Fabricate(:video)
          post :create, review: {rating: 4}, video_id: video.id
          expect(response).to render_template "videos/show"
        end

        it "sets @video" do
          video = Fabricate(:video)
          post :create, review: {rating: 4}, video_id: video.id
          expect(assigns[:video]).to eq(video)
        end

        it "sets @reviews" do
          video = Fabricate(:video)
          review = Fabricate(:review, video: video)
          post :create, review: {rating: 4}, video_id: video.id
          expect(assigns(:reviews)).to match_array([review])
        end
      end
    end

    context "with unauthenticated users" do
      it "redirects to the sign in path" do
        video = Fabricate(:video)
        post :create, review: Fabricate.attributes_for(:review), video_id: video.id
        expect(response).to redirect_to sign_in_path
      end
    end
  end
end