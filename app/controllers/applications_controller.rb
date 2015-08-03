class ApplicationsController < ApplicationController
  # GET /applications
  # GET /applications.json

  # $LOAD_PATH << '/lib/decorator'
  require "decorator/event_decorator" 

  def index
    @applications = Application.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applications }
    end
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
    @application = Application.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @application }
    end
  end

  # GET /applications/new
  # GET /applications/new.json
  def new
    @application = Application.new
    @applicant = Applicant.new

    @job_id = params[:job_id]
    puts "ffffffffffffffffffffffffffffff"
    puts @job_id
    puts "ffffffffffffffffffffffffffffff"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @application }
    end
  end

  # GET /applications/1/edit
  def edit
    @application = Application.find(params[:id])
  end

  # POST /applications
  # POST /applications.json
  def create
    #puts params.to_json
    #puts params["name_label"]
    applicant = Applicant.find_by_email(params[:applicant][:email])
    #puts applicant.to_json
    
    #applicant found add new appliccation to it
    applicant = Applicant.create(params[:applicant]) if applicant.nil?

    params[:application][:applicant_id] = applicant.id
    @application = Application.new( params[:application])

    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
        format.json { render json: @application, status: :created, location: @application }
      else
        format.html { render action: "new" }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applications/1
  # PUT /applications/1.json
  def update
    @application = Application.find(params[:id])

    respond_to do |format|
      if @application.update_attributes(params[:application])
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @application = Application.find(params[:id])
    @application.destroy

    respond_to do |format|
      format.html { redirect_to applications_url }
      format.json { head :no_content }
    end
  end

  def load_events
    @applications = Application.all

    if request.xhr? #if refresh a small part
    end
    events = EventDecorator::get_events_from_interviews InterviewEvent.all

    render json: events
  end
end


