class ContentsController < ApplicationController
  def all
    @contents = Content.all
    if @contents
      @message = true;
    else
      @message = false;
    end
  end
  
  
  def find
    @content = Content.find(params[:id])
    if @content
      @message = true;
    else
      @message = false;
    end
  end
  
  def new
    
    if @content
      @message = true;
    else
      @message = false;
    end
  end
end
