class MeetingNotesController < ApplicationController
  # GET /meeting_notes
  # GET /meeting_notes.json
  def index
    @meeting_notes = MeetingNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meeting_notes }
    end
  end

  # GET /meeting_notes/1
  # GET /meeting_notes/1.json
  def show
    @meeting_note = MeetingNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meeting_note }
    end
  end

  # GET /meeting_notes/new
  # GET /meeting_notes/new.json
  def new
    @meeting_note = MeetingNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meeting_note }
    end
  end

  # GET /meeting_notes/1/edit
  def edit
    @meeting_note = MeetingNote.find(params[:id])
  end

  # POST /meeting_notes
  # POST /meeting_notes.json
  def create
    @meeting_note = MeetingNote.new(params[:meeting_note])
    @thesis = Thesis.find(params[:thesis_id])
    @meeting = Meeting.find(params[:idMeeting])
    @meeting_note.thesis = @thesis
    @meeting_note.meeting = @meeting

    respond_to do |format|
      if @meeting_note.save
        format.html { redirect_to meetingsStudent_path(:email=>params[:email],:id=>@thesis), notice: 'Note updated.' }
      else
        format.html { redirect_to meetingsStudent_path(:email=>params[:email],:id=>@thesis), notice: @meeting_note.errors.full_messages}
      end
    end
  end

  # PUT /meeting_notes/1
  # PUT /meeting_notes/1.json
  def update
    @meeting_note = MeetingNote.find(params[:id])

    respond_to do |format|
      if @meeting_note.update_attributes(params[:meeting_note])
        format.html { redirect_to @meeting_note, notice: 'Meeting note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meeting_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_notes/1
  # DELETE /meeting_notes/1.json
  def destroy
    @meeting_note = MeetingNote.find(params[:id])
    @meeting_note.destroy

    respond_to do |format|
      format.html { redirect_to meeting_notes_url }
      format.json { head :no_content }
    end
  end
end
