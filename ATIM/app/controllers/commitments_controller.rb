class CommitmentsController < ApplicationController

  def show
    @commitment = Commitment.find(params[:id])
    @thesis = @commitment.thesis
    @commitments = Commitment.find_all_by_thesis_id(@thesis)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commitments }
    end
  end


  def search
    
    @thesis = Thesis.find(params[:id])
    @meeting = Meeting.find_by_thesis_id( @thesis.id)
    @teacher =  Teacher.find(@thesis.teacher_id)
    query = 'thesis_id = ' << @thesis.id.to_s
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
    @commitments =  Commitment.where(query).sort_by( &:due_date)
  end

  # POST /commitments
  # POST /commitments.json
  def create
    @commitment = Commitment.new(params[:commitment])
    @thesis = Thesis.find(params[:thesis_id])
    @meeting = Meeting.find(params[:idMeeting])
    @commitment.thesis = @thesis
    @commitment.meeting = @meeting
 #   @commitments = Commitment.find_all_by_meeting_id(params[:idMeeting])

    respond_to do |format|
      if @commitment.save
        format.html { redirect_to thesis_path(:id =>@thesis.id, :id2 =>@thesis.teacher_id), notice: 'Student was successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { redirect_to index_path(:email=>params[:emailTeacher]), notice: @student.errors.full_messages}
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def close
    @commitment = Commitment.find( params[:id]) # look up a commitment by unique ID
    @commitment.update_attributes( :done => true)
    @thesis_id = @commitment.thesis_id
    redirect_to commitment_path( @commitment.thesis_id)
  end
end

# PUT /commitments/1
# PUT /commitments/1.json
def update
  @commitment = Commitment.find(params[:id])

  respond_to do |format|
    if @commitment.update_attributes(params[:commitment])
      format.html { redirect_to @commitment, notice: 'Commitment was successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: "edit" }
      format.json { render json: @commitment.errors, status: :unprocessable_entity }
    end
  end
end
