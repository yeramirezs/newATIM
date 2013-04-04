class StudentsController < ApplicationController
  # GET /students
  # GET /students.json
  def index
    @students = Student.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    @thesis = Thesis.find(params[:thesis_id])
     @student = Student.new(params[:student])
    @student.thesis_id = @thesis.id
   

    respond_to do |format|
      if @student.save
        format.html { redirect_to index_path(:email=>params[:emailTeacher]), notice: 'Student was successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { redirect_to index_path(:email=>params[:emailTeacher]), notice: @student.errors.full_messages}
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    if(params[:id]=="new")
      if(!params[:teacher_id])
        flash[:notice] = "No ha iniciado sesion"
        redirect_to root_path
      end
      @teacher = Teacher.find(params[:teacher_id])
      @thesis = Thesis.new(params[:thesis])
      @thesis.teacher_id = @teacher.id
      @thesis.state = 'Inactiva'
      respond_to do |format|
        if @thesis.save
          format.html { redirect_to index_path(:email=>@teacher.email), notice: 'Thesis was successfully created.' }
          format.json { render json: @thesis, status: :created, location: @thesis }
        else
          format.html { render action: "new", notice: ''+@thesis.teacher_id }
          format.json { render json: @thesis.errors, status: :unprocessable_entity }
        end
      end
    else
      @student = Student.find(params[:id])

      respond_to do |format|
        if @student.update_attributes(params[:student])
          format.html { redirect_to @student, notice: 'Student was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
    end
  end


    
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end
end
