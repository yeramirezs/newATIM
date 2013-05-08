require 'spec_helper'

describe MeetingResourceController do

  describe "GET 'load'" do
    it "returns http success" do
      get 'load'
      response.should be_success
    end
  end

  describe "GET 'list'" do
    it "returns http success" do
      get 'list'
      response.should be_success
    end
  end

end
