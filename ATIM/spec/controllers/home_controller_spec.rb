require 'spec_helper'

describe HomeController do

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'sign'" do
    it "returns http success" do
      get 'sign'
      response.should be_success
    end
  end

end
