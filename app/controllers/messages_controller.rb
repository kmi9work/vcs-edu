class MessagesController < ApplicationController
  def new
    @message=Message.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end
  
  def sent
    @message = Message.new(params[:message])
    @message.student_from=@student.login    
    respond_to do |format|
      if @message.save
        flash[:notice] = 'Сообщение для #{@student_to.login} отправленно.'
        format.html { redirect_to(:controller => :messages, :action => :list) }        
      else
        @topic.comments.pop
        flash[:notice] = 'Сообщение не отправленно'
        format.html { render :action => "new" }
      end
    end
  end
  
  def list
    @messages = Message.find_all_by_student_to(@student.login)
    p @messages
    puts "============"
    respond_to do |format|
      format.html # list.html.erb      
    end
  end
  
  def show
    @message = Message.find_by_id(params[:message_id])
    @message.new=0
    @message.save
  end
  
end
