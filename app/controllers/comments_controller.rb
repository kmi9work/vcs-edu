class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.xml
  def list
    @comments = Comment.find_all_by_topic_id(params[:topic_ix])
    p @comments
    puts "============"
    respond_to do |format|
      format.html # list.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topics }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
    comment = @comment
    while !comment.topic
      comment = comment.comment
    end
    @topic = comment.topic
  end

  # POST /comments
  # POST /comments.xml
  def create
    @comment = Comment.new(params[:comment])
    @comment.student = @student
    topic = Topic.find(params[:topic_id])
    if params[:comment_id]
      comment = Comment.find(params[:comment_id])
      comment.comments << @comment
      @comment.comment = comment
    else
      @comment.topic = topic
      topic.comments << @comment
    end
    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Comment was successfully created.'
        format.html { redirect_to topic }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
      else
        if params[:comment_id]
          comment.comments.pop
        else
          topic.comments.pop
        end
        flash[:notice] = 'Error.'
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])
    comment = @comment
    while !comment.topic
      comment = comment.comment
    end
    topic = comment.topic 
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        flash[:notice] = 'Comment was successfully updated.'
        format.html { redirect_to(topic) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    topic = @comment.topic
    @comment.destroy
    
    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end
end
