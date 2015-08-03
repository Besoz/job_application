class InterviewEventsController < ApplicationController
  # GET /interview_events
  # GET /interview_events.json
  def index
    @interview_events = InterviewEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interview_events }
    end
  end

  # GET /interview_events/1
  # GET /interview_events/1.json
  def show
    puts "dddddddddddddddddddddddddddddddddddddd"
    puts params[:id]
    @interview_event = InterviewEvent.find_by_id(params[:id])

    puts @interview_event

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interview_event }
    end
  end

  # GET /interview_events/new
  # GET /interview_events/new.json
  def new
    @interview_event = InterviewEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interview_event }
    end
  end

  # GET /interview_events/1/edit
  def edit
    @interview_event = InterviewEvent.find(params[:id])
  end

  # POST /interview_events
  # POST /interview_events.json
  def create
    @interview_event = InterviewEvent.new(params[:interview_event])

    respond_to do |format|
      if @interview_event.save
        format.html { redirect_to @interview_event, notice: 'Interview event was successfully created.' }
        format.json { render json: @interview_event, status: :created, location: @interview_event }
      else
        format.html { render action: "new" }
        format.json { render json: @interview_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interview_events/1
  # PUT /interview_events/1.json
  def update
    @interview_event = InterviewEvent.find(params[:id])

    respond_to do |format|
      if @interview_event.update_attributes(params[:interview_event])
        format.html { redirect_to @interview_event, notice: 'Interview event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interview_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_events/1
  # DELETE /interview_events/1.json
  def destroy
    @interview_event = InterviewEvent.find(params[:id])
    @interview_event.destroy

    respond_to do |format|
      format.html { redirect_to interview_events_url }
      format.json { head :no_content }
    end
  end
  def load_events
    puts "here"
    puts params[:koko]
    if request.xhr? #if refresh a small part
    end
    render text: "kok"

  end

  def put_events
    interview_event = InterviewEvent.find(params[:id])

    puts @interview_event.to_json
    
    puts "put event"
    puts "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"

    puts params[:myDate]
    puts "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"


    interview_event.update_attributes!(date: params[:myDate]);

    if request.xhr? #if refresh a small part
    end
    render text: params[:myDate]

  end
end
