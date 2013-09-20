require 'spec_helper'

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

describe LaunchersController do

  # This should return the minimal set of attributes required to create a valid
  # Launcher. As you add validations to Launcher, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LaunchersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all launchers as @launchers" do
      launcher = Launcher.create! valid_attributes
      get :index, {}, valid_session
      assigns(:launchers).should eq([launcher])
    end
  end

  describe "GET show" do
    it "assigns the requested launcher as @launcher" do
      launcher = Launcher.create! valid_attributes
      get :show, {:id => launcher.to_param}, valid_session
      assigns(:launcher).should eq(launcher)
    end
  end

  describe "GET new" do
    it "assigns a new launcher as @launcher" do
      get :new, {}, valid_session
      assigns(:launcher).should be_a_new(Launcher)
    end
  end

  describe "GET edit" do
    it "assigns the requested launcher as @launcher" do
      launcher = Launcher.create! valid_attributes
      get :edit, {:id => launcher.to_param}, valid_session
      assigns(:launcher).should eq(launcher)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Launcher" do
        expect {
          post :create, {:launcher => valid_attributes}, valid_session
        }.to change(Launcher, :count).by(1)
      end

      it "assigns a newly created launcher as @launcher" do
        post :create, {:launcher => valid_attributes}, valid_session
        assigns(:launcher).should be_a(Launcher)
        assigns(:launcher).should be_persisted
      end

      it "redirects to the created launcher" do
        post :create, {:launcher => valid_attributes}, valid_session
        response.should redirect_to(Launcher.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved launcher as @launcher" do
        # Trigger the behavior that occurs when invalid params are submitted
        Launcher.any_instance.stub(:save).and_return(false)
        post :create, {:launcher => { "user_name" => "invalid value" }}, valid_session
        assigns(:launcher).should be_a_new(Launcher)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Launcher.any_instance.stub(:save).and_return(false)
        post :create, {:launcher => { "user_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested launcher" do
        launcher = Launcher.create! valid_attributes
        # Assuming there are no other launchers in the database, this
        # specifies that the Launcher created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Launcher.any_instance.should_receive(:update).with({ "user_name" => "MyString" })
        put :update, {:id => launcher.to_param, :launcher => { "user_name" => "MyString" }}, valid_session
      end

      it "assigns the requested launcher as @launcher" do
        launcher = Launcher.create! valid_attributes
        put :update, {:id => launcher.to_param, :launcher => valid_attributes}, valid_session
        assigns(:launcher).should eq(launcher)
      end

      it "redirects to the launcher" do
        launcher = Launcher.create! valid_attributes
        put :update, {:id => launcher.to_param, :launcher => valid_attributes}, valid_session
        response.should redirect_to(launcher)
      end
    end

    describe "with invalid params" do
      it "assigns the launcher as @launcher" do
        launcher = Launcher.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Launcher.any_instance.stub(:save).and_return(false)
        put :update, {:id => launcher.to_param, :launcher => { "user_name" => "invalid value" }}, valid_session
        assigns(:launcher).should eq(launcher)
      end

      it "re-renders the 'edit' template" do
        launcher = Launcher.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Launcher.any_instance.stub(:save).and_return(false)
        put :update, {:id => launcher.to_param, :launcher => { "user_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested launcher" do
      launcher = Launcher.create! valid_attributes
      expect {
        delete :destroy, {:id => launcher.to_param}, valid_session
      }.to change(Launcher, :count).by(-1)
    end

    it "redirects to the launchers list" do
      launcher = Launcher.create! valid_attributes
      delete :destroy, {:id => launcher.to_param}, valid_session
      response.should redirect_to(launchers_url)
    end
  end

end