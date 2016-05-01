require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ProfilesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Profile. As you add validations to Profile, be sure to
  # adjust the attributes here as well.
  let(:user) { FactoryGirl.create(:user) }
  let(:valid_attributes) {
    {bio: Faker::Lorem.paragraph(2), user_id: user.id}
  }

  let(:invalid_attributes) {
    {bio: nil, user_id: nil}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProfilesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  # describe "GET #index" do
  #   it "assigns all profiles as @profiles" do
  #     profile = Profile.create! valid_attributes
  #     get :index, {}, valid_session
  #     expect(assigns(:profiles)).to eq([profile])
  #   end
  # end

  # describe "GET #show" do
  #   it "assigns the requested profile as @profile" do
  #     profile = Profile.create! valid_attributes
  #     get :show, {:user_id => user.id, :id =>  profile.to_param}, valid_session
  #     expect(assigns(:profile)).to eq(profile)
  #   end
  # end
  #
  # describe "GET #new" do
  #   it "assigns a new profile as @profile" do
  #     get :new, {:user_id => user.id}, valid_session
  #     expect(assigns(:profile)).to be_a_new(Profile)
  #   end
  # end
  #
  # describe "GET #edit" do
  #   it "assigns the requested profile as @profile" do
  #     profile = Profile.create! valid_attributes
  #     get :edit, {:user_id => user.id, :id => profile.to_param}, valid_session
  #     expect(assigns(:profile)).to eq(profile)
  #   end
  # end
  #
  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new Profile" do
  #       expect {
  #         post :create, {:user_id => user.id, :profile => valid_attributes}, valid_session
  #       }.to change(Profile, :count).by(1)
  #     end
  #
  #     it "assigns a newly created profile as @profile" do
  #       post :create, {:user_id => user.id, :profile => valid_attributes}, valid_session
  #       expect(assigns(:profile)).to be_a(Profile)
  #       expect(assigns(:profile)).to be_persisted
  #     end
  #
  #     it "redirects to the created profile" do
  #       post :create, {:user_id => user.id, :profile => valid_attributes}, valid_session
  #       profile = user.profile
  #       expect(response).to redirect_to(user_profile_path(user, profile))
  #     end
  #   end
  #
  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved profile as @profile" do
  #       post :create, {:user_id => user.id, :profile => invalid_attributes}, valid_session
  #       expect(assigns(:profile)).to be_a_new(Profile)
  #     end
  #
  #     it "re-renders the 'new' template" do
  #       post :create, {:user_id => user.id, :profile => invalid_attributes}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end

  # describe "PUT #update" do
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }
  #
  #     it "updates the requested profile" do
  #       profile = Profile.create! valid_attributes
  #       put :update, {:id => profile.to_param, :profile => new_attributes}, valid_session
  #       profile.reload
  #       skip("Add assertions for updated state")
  #     end
  #
  #     it "assigns the requested profile as @profile" do
  #       profile = Profile.create! valid_attributes
  #       put :update, {:id => profile.to_param, :profile => valid_attributes}, valid_session
  #       expect(assigns(:profile)).to eq(profile)
  #     end
  #
  #     it "redirects to the profile" do
  #       profile = Profile.create! valid_attributes
  #       put :update, {:id => profile.to_param, :profile => valid_attributes}, valid_session
  #       expect(response).to redirect_to(profile)
  #     end
  #   end
  #
  #   context "with invalid params" do
  #     it "assigns the profile as @profile" do
  #       profile = Profile.create! valid_attributes
  #       put :update, {:id => profile.to_param, :profile => invalid_attributes}, valid_session
  #       expect(assigns(:profile)).to eq(profile)
  #     end
  #
  #     it "re-renders the 'edit' template" do
  #       profile = Profile.create! valid_attributes
  #       put :update, {:id => profile.to_param, :profile => invalid_attributes}, valid_session
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end

  # describe "DELETE #destroy" do
  #   it "destroys the requested profile" do
  #     profile = Profile.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => profile.to_param}, valid_session
  #     }.to change(Profile, :count).by(-1)
  #   end
  #
  #   it "redirects to the profiles list" do
  #     profile = Profile.create! valid_attributes
  #     delete :destroy, {:id => profile.to_param}, valid_session
  #     expect(response).to redirect_to(profiles_url)
  #   end
  # end

end
