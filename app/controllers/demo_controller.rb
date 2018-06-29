class DemoController < ApplicationController
  layout 'application'
  
  def index
    render('index')
  end
  
 def hi
    render('hi')
 end
  
  def other_hello
     redirect_to(:controller => 'demo', :action => 'hi')
  end
  
end
