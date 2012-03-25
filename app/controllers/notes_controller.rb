class NotesController < ApplicationController

	def index
		@notes = Note.all
		respond_to do |format|
			format.html
		end
	end

	def slide
		@note = Note.new
		respond_to do |format|
    	format.html # new.html.erb
    	format.json { render json: @note }
        end
	end

	def create
		 @note = Note.new(params[:note])

    	respond_to do |format|
    		if @note.save
        	@i = @note.id.to_s
        	f = File.new("files/notes/notes"+@i+".txt","w")
        	#fl = File.new("D:\\data.txt","w")
         
       		f.print(@note.notetake.to_s)
        	f.flush

        	#fl = File.expand_path(f)
        	f.close
        	#old_stdout = $stdout
        	#$stdout = fl
        	#$stderr = fl
        	#fl.flush
        	format.html {render action: "fileshow"}
        	format.json { render json: @i }
        end
    end
	end

	def fileshow
		respond_to do |format|
		format.html
	end
	end

end