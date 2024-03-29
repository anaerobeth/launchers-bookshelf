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

describe BookAuthorsController do

  # This should return the minimal set of attributes required to create a valid
  # BookAuthor. As you add validations to BookAuthor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "book_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BookAuthorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all book_authors as @book_authors" do
      book_author = BookAuthor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:book_authors).should eq([book_author])
    end
  end

  describe "GET show" do
    it "assigns the requested book_author as @book_author" do
      book_author = BookAuthor.create! valid_attributes
      get :show, {:id => book_author.to_param}, valid_session
      assigns(:book_author).should eq(book_author)
    end
  end

  describe "GET new" do
    it "assigns a new book_author as @book_author" do
      get :new, {}, valid_session
      assigns(:book_author).should be_a_new(BookAuthor)
    end
  end

  describe "GET edit" do
    it "assigns the requested book_author as @book_author" do
      book_author = BookAuthor.create! valid_attributes
      get :edit, {:id => book_author.to_param}, valid_session
      assigns(:book_author).should eq(book_author)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BookAuthor" do
        expect {
          post :create, {:book_author => valid_attributes}, valid_session
        }.to change(BookAuthor, :count).by(1)
      end

      it "assigns a newly created book_author as @book_author" do
        post :create, {:book_author => valid_attributes}, valid_session
        assigns(:book_author).should be_a(BookAuthor)
        assigns(:book_author).should be_persisted
      end

      it "redirects to the created book_author" do
        post :create, {:book_author => valid_attributes}, valid_session
        response.should redirect_to(BookAuthor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved book_author as @book_author" do
        # Trigger the behavior that occurs when invalid params are submitted
        BookAuthor.any_instance.stub(:save).and_return(false)
        post :create, {:book_author => { "book_id" => "invalid value" }}, valid_session
        assigns(:book_author).should be_a_new(BookAuthor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BookAuthor.any_instance.stub(:save).and_return(false)
        post :create, {:book_author => { "book_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested book_author" do
        book_author = BookAuthor.create! valid_attributes
        # Assuming there are no other book_authors in the database, this
        # specifies that the BookAuthor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BookAuthor.any_instance.should_receive(:update).with({ "book_id" => "1" })
        put :update, {:id => book_author.to_param, :book_author => { "book_id" => "1" }}, valid_session
      end

      it "assigns the requested book_author as @book_author" do
        book_author = BookAuthor.create! valid_attributes
        put :update, {:id => book_author.to_param, :book_author => valid_attributes}, valid_session
        assigns(:book_author).should eq(book_author)
      end

      it "redirects to the book_author" do
        book_author = BookAuthor.create! valid_attributes
        put :update, {:id => book_author.to_param, :book_author => valid_attributes}, valid_session
        response.should redirect_to(book_author)
      end
    end

    describe "with invalid params" do
      it "assigns the book_author as @book_author" do
        book_author = BookAuthor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BookAuthor.any_instance.stub(:save).and_return(false)
        put :update, {:id => book_author.to_param, :book_author => { "book_id" => "invalid value" }}, valid_session
        assigns(:book_author).should eq(book_author)
      end

      it "re-renders the 'edit' template" do
        book_author = BookAuthor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BookAuthor.any_instance.stub(:save).and_return(false)
        put :update, {:id => book_author.to_param, :book_author => { "book_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested book_author" do
      book_author = BookAuthor.create! valid_attributes
      expect {
        delete :destroy, {:id => book_author.to_param}, valid_session
      }.to change(BookAuthor, :count).by(-1)
    end

    it "redirects to the book_authors list" do
      book_author = BookAuthor.create! valid_attributes
      delete :destroy, {:id => book_author.to_param}, valid_session
      response.should redirect_to(book_authors_url)
    end
  end

end
