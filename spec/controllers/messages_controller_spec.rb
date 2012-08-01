require 'spec_helper'

describe MessagesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

<<<<<<< HEAD
  describe "GET 'update'" do
    it "returns http success" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'delete'" do
    it "returns http success" do
      get 'delete'
=======
  describe "GET 'destroy'" do
    it "returns http success" do
      get 'destroy'
>>>>>>> e8bfc8bd6f8e5e988f57cea70e4df5dc53d5406c
      response.should be_success
    end
  end

end
