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

describe ResourcesController do

  # This should return the minimal set of attributes required to create a valid
  # Resource. As you add validations to Resource, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ResourcesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all resources as @resources" do
      resource = Resource.create! valid_attributes
      get :index, {}, valid_session
      assigns(:resources).should eq([resource])
    end
  end

  describe "GET show" do
    it "assigns the requested resource as @resource" do
      resource = Resource.create! valid_attributes
      get :show, {:id => resource.to_param}, valid_session
      assigns(:resource).should eq(resource)
    end
  end

  describe "GET new" do
    it "assigns a new resource as @resource" do
      get :new, {}, valid_session
      assigns(:resource).should be_a_new(Resource)
    end
  end

  describe "GET edit" do
    it "assigns the requested resource as @resource" do
      resource = Resource.create! valid_attributes
      get :edit, {:id => resource.to_param}, valid_session
      assigns(:resource).should eq(resource)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Resource" do
        expect {
          post :create, {:resource => valid_attributes}, valid_session
        }.to change(Resource, :count).by(1)
      end

      it "assigns a newly created resource as @resource" do
        post :create, {:resource => valid_attributes}, valid_session
        assigns(:resource).should be_a(Resource)
        assigns(:resource).should be_persisted
      end

      it "redirects to the created resource" do
        post :create, {:resource => valid_attributes}, valid_session
        response.should redirect_to(Resource.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved resource as @resource" do
        # Trigger the behavior that occurs when invalid params are submitted
        Resource.any_instance.stub(:save).and_return(false)
        post :create, {:resource => { "title" => "invalid value" }}, valid_session
        assigns(:resource).should be_a_new(Resource)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Resource.any_instance.stub(:save).and_return(false)
        post :create, {:resource => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested resource" do
        resource = Resource.create! valid_attributes
        # Assuming there are no other resources in the database, this
        # specifies that the Resource created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Resource.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => resource.to_param, :resource => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested resource as @resource" do
        resource = Resource.create! valid_attributes
        put :update, {:id => resource.to_param, :resource => valid_attributes}, valid_session
        assigns(:resource).should eq(resource)
      end

      it "redirects to the resource" do
        resource = Resource.create! valid_attributes
        put :update, {:id => resource.to_param, :resource => valid_attributes}, valid_session
        response.should redirect_to(resource)
      end
    end

    describe "with invalid params" do
      it "assigns the resource as @resource" do
        resource = Resource.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Resource.any_instance.stub(:save).and_return(false)
        put :update, {:id => resource.to_param, :resource => { "title" => "invalid value" }}, valid_session
        assigns(:resource).should eq(resource)
      end

      it "re-renders the 'edit' template" do
        resource = Resource.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Resource.any_instance.stub(:save).and_return(false)
        put :update, {:id => resource.to_param, :resource => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested resource" do
      resource = Resource.create! valid_attributes
      expect {
        delete :destroy, {:id => resource.to_param}, valid_session
      }.to change(Resource, :count).by(-1)
    end

    it "redirects to the resources list" do
      resource = Resource.create! valid_attributes
      delete :destroy, {:id => resource.to_param}, valid_session
      response.should redirect_to(resources_url)
    end
  end

end
