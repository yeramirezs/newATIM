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
      @teacher = Teacher.search(params[:email])
      if(!@thesis)
        flash[:notice] = "Tesis no valida"
        redirect_to root_path
      else
        if(@thesis.students.length==0)
          flash[:notice] = "No ha asignado estudiantes"
          redirect_to index_path(:email=>params[:email])
        else
          @thesis.update_attribute(:state, "Activo")
          @section1 = Section.new
          @section1.name = 'Objetivos'
          @section1.thesis_id = @thesis.id
          @section2 = Section.new
          @section2.name = 'Planteamiento del Problema'
          @section2.thesis_id = @thesis.id
          @section3 = Section.new
          @section3.name = 'Estrategia'
          @section3.thesis_id = @thesis.id
          @section4 = Section.new
          @section4.name = 'Implementacion'
          @section4.thesis_id = @thesis.id
          @section5 = Section.new
          @section5.name = 'Conclusiones'
          @section5.thesis_id = @thesis.id
          @section6 = Section.new
          @section6.name = 'Otros'
          @section6.thesis_id = @thesis.id
          @section1.save      
          @section2.save  
          @section3.save  
          @section4.save  
          @section5.save

          @subsection1 = Subsection.new
          @subsection1.name = 'Objetivos Generales'
          @subsection1.description = 'Objetivos que persigue el proyecto de grado de forma global'
          @subsection1.thesis_id = @thesis.id
          @subsection1.section_id = @section1.id
          @subsection1.save

          @subsection2 = Subsection.new
          @subsection2.name = 'Objetivos Especificos'
          @subsection2.description = 'Los objetivos especificos de un proyecto de grado precisan requerimientos o propositos en orden a la naturaleza de la investigacion y tienen como orientacion el objetivo general.'
          @subsection2.thesis_id = @thesis.id
          @subsection2.section_id = @section1.id
          @subsection2.save

          @subsection3 = Subsection.new
          @subsection3.name = 'Problema de Tesis'
          @subsection3.description = 'Descripcion del problema que se quiere solucionar a traves del proyecto de grado'
          @subsection3.thesis_id = @thesis.id
          @subsection3.section_id = @section2.id
          @subsection3.save

          @subsection4 = Subsection.new
          @subsection4.name = 'Hipotesis'
          @subsection4.description = ''
          @subsection4.thesis_id = @thesis.id
          @subsection4.section_id = @section2.id
          @subsection4.save

          @subsection5 = Subsection.new
          @subsection5.name = 'Preguntas de investigacion'
          @subsection5.description = ''
          @subsection5.thesis_id = @thesis.id
          @subsection5.section_id = @section2.id
          @subsection5.save

          @subsection6 = Subsection.new
          @subsection6.name = 'Sustentacion del problema de tesis'
          @subsection6.description = 'Relevancia y pertinencia del problema propuesto.'
          @subsection6.thesis_id = @thesis.id
          @subsection6.section_id = @section2.id
          @subsection6.save

          @subsection7 = Subsection.new
          @subsection7.name = 'Estrategia de solucion'
          @subsection7.description = 'Estrategia propuesta para la solucion del problema'
          @subsection7.thesis_id = @thesis.id
          @subsection7.section_id = @section3.id
          @subsection7.save

          @subsection8 = Subsection.new
          @subsection8.name = 'Entregables de implementacion'
          @subsection8.description = 'Documentos y software para implementar la solución propuesta'
          @subsection8.thesis_id = @thesis.id
          @subsection8.section_id = @section4.id
          @subsection8.save

          @subsection9 = Subsection.new
          @subsection9.name = 'Conclusiones'
          @subsection9.description = 'Conclusiones del trabaja desarrollado'
          @subsection9.thesis_id = @thesis.id
          @subsection9.section_id = @section5.id
          @subsection9.save

          @subsection10 = Subsection.new
          @subsection10.name = 'Trabajo Futuro'
          @subsection10.description = 'Trabajo para desarrollar en un futuro'
          @subsection10.thesis_id = @thesis.id
          @subsection10.section_id = @section5.id
          @subsection10.save

          @subsection11 = Subsection.new
          @subsection11.name = 'Otros artefactos'
          @subsection11.description = 'Otros artefactos desarrollados para el proyecto de grado'
          @subsection11.thesis_id = @thesis.id
          @subsection11.section_id = @section6.id
          @subsection11.save

          redirect_to thesis_path(:id =>@thesis.id, :id2 =>@teacher.id)
        end
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
