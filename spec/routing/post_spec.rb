require 'spec_helper'

describe "routing to posts" do

    it "routes / to posts#index" do
	    expect(:get => "/").to route_to(
	      :controller => "posts",
	      :action => "index"
	    )
	end
	
end