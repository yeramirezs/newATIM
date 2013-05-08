class MeetingResourceController < ApplicationController

  def upload
    uploaded_io = params[:recurso]
    File.open(Rails.root.join('public', 'files/resources', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    @thesis  = Thesis.find (params[:thesis_id])
    @meeting_resource = MeetingResource.new
    @meeting_resource.thesis_id   = @thesis.id
    @meeting_resource.meeting_id  = params[:meeting_id]
    @meeting_resource.description = params[:descripcion]
    @meeting_resource.file_name   = uploaded_io.original_filename

    respond_to do |format|
      if @meeting_resource.save!
        format.html { redirect_to meetingsStudent_path(:email=>params[:email],:id=>@thesis), notice: 'Recurso cargado correctamente' }
      else
        format.html { redirect_to meetingsStudent_path(:email=>params[:email],:id=>@thesis), notice: @meeting_resource.errors.full_messages}
      end
    end

  end


  def list
    @thesis  = Thesis.find (params[:thesis_id])
    @meeting = Meeting.find(params[:id])
    query    =   "thesis_id =" << @thesis.id.to_s << " and meeting_id = " << @meeting.id.to_s
    @mresources = MeetingResource.where( query ).sort_by( &:description)

  end
end
