class IndexController < ApplicationController
  def index
  	
  	if( !params[:email])
  		flash[:notice] = "No ingreso un usuario valido"
  		redirect_to root_path
  	else
  		@teacher = Teacher.search(params[:email])
      @student = Student.search(params[:email])
  		if(!@teacher)

  			if(!@student)
          flash[:notice] = "No ingreso un usuario valido"
          redirect_to root_path
        else
          redirect_to indexUsuario_path(:email=>params[:email])
        end 
  		end
      
  	end

  end

  def comenzarTesis
    if( !params[:email] || !params[:id])
      flash[:notice] = "No ingreso un usuario valido"
      redirect_to root_path
    else
      @thesis = Thesis.find(params[:id])
      if(!@thesis)
        flash[:notice] = "Tesis no valida"
        redirect_to root_path
      else
        if(@thesis.students.length==0)
          flash[:notice] = "No ha asignado estudiantes"
        else
          @thesis.update_attribute(:state, "Activo")
        end
          redirect_to index_path(:email=>params[:email])
      end
    end
  end

  def indexUsuario
    @student = Student.search(params[:email])
    @thesis = Thesis.find(@student.thesis_id)
  end

  def resourcesIndex
    @student = Student.search(params[:email])
    @thesis = Thesis.find(@student.thesis_id)
    @sources   = Source.where( 'thesis_id=' << @thesis.id.to_s).sort_by( &:title)
  end

  def indexDeliverable
    @student = Student.search(params[:email])
    @thesis = Thesis.find(@student.thesis_id)
    @sources   = Source.where( @thesis_id).sort_by( &:title)
  end

  def commitments 
    @thesis_id = params[:id]
    @student = Student.search(params[:email])
    @thesis = Thesis.find(@student.thesis_id)
    query = 'thesis_id = ' << @thesis_id
    comm_type = params[:comm_type]
    if comm_type == 'open' then
       query  = query << " and done = false"
    else if comm_type == 'closed' then
            query = query << " and done = true"
         else if comm_type == 'overdue' then
                 query = query << " and done = false and due_date <= NOW()"
              else if comm_type == 'in2weeks' then
                      query = query << " and done = false and NOW() between SUBDATE(due_date, 14) and due_date "
                   end
              end
         end
    end
    @commitments =  Commitment.where( query).sort_by( &:due_date)
  end

  def createResource
    @student = Student.search(params[:email])
    @source = Source.create!(params[:source])
    redirect_to resourcesIndex_path(:email=>@student.email)

  end

  def updateResource
    @student = Student.search(params[:email])
    @source = Source.find(params[:id])
    @source.analysis = params[:analysis]
    @source.save
    redirect_to resourcesIndex_path(:email=>@student.email)

  end

  def meetings
    @thesis_id = params[:id]
    @student = Student.search(params[:email])
    @thesis = Thesis.find(@student.thesis_id)
    @meetings = Meeting.find_all_by_thesis_id(@thesis)
    @meeting_note = MeetingNote.new

  end
end
