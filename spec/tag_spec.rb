require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Tag do

	def tag(name, options = {})
		Tag.new(name, options).show
	end

	it "instantiate itself" do
		Tag.new(:p).should be
	end
	
	it "accept a tag and generate" do
		tag(:p).should == "<p></p>"
	end

	it "have content" do
		tag(:p, :content => "Hello World!").should == "<p>Hello World!</p>"
	end

	it "one attribute" do 
		tag(:p, :content => "hello again", :class => "fun").should == "<p class='fun'>hello again</p>"
	end

	it "multiple attributes" do
		tag(:p, :content => "hello again", :class => "fun", :id => "unique").should == "<p class='fun' id='unique'>hello again</p>"
	end
  
end
