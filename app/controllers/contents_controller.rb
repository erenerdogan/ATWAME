class ContentsController < ApplicationController
  
  skip_before_filter :verify_authenticity_token

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
    @content = Content.new
    @content.description = params[:description]
    @content.user_id = params[:user_id]
    @content.category_id = params[:category_id]
    
    @location = Location.new
    @location.latitude = params[:lat]
    @location.longitude = params[:lng]
    @location.save

    
    @content.location = @location
    @content.save
    if @content
      @message = true;
    else
      @message = false;
    end
  end

  def reportit
    @report = Report.new
    @report.report = params[:message]
    @report.user_id =params[:user_id]
    @report.content_id = params[:content_id]
    @report.save
    if @report
      @message = true;
    else
      @message = false;
    end
  end

  def commentadd
    @comment = Comment.new
    @comment.description = param[:message]
    @comment.user_id = param[:user_id]
    @comment.content_id = param[:content_id]
    if @report
      @message = true;
    else
      @message = false;
    end
  end


  def comments
    @comments = Content.find(params[:id])
    if @comments
      @message = true;
    else
      @message = false;
    end
  end
end
