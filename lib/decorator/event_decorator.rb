module EventDecorator

	def self.get_events_from_interviews interviews

		puts "ppppppppppppppppppppppppppppppppppppppppp1"
		puts interviews
				puts "ppppppppppppppppppppppppppppppppppppppppp2"

		# interviews_arr = JSON.parse(interviews.to_json)
		# 		puts "ppppppppppppppppppppppppppppppppppppppppp3"

		# # puts interviews_arr
		# 		puts "ppppppppppppppppppppppppppppppppppppppppp4"

	 	events = Array.new
	 			# puts "ppppppppppppppppppppppppppppppppppppppppp5"
		interviews.each do |interview|
		  puts interview.date 
		  puts interview.id 
		  puts interview.application_id

		  puts interview.application

		  event_title = 'Interview of : '+ interview.application.applicant.name 
		  event = {start: interview.date, title: event_title}
      events.push(event)

		end
	   #  for i in 0..interviews_arr.length
				# puts "ppppppppppppppppppppppppppppppppppppppppp6"

	   #  	puts interviews_arr[i]
	   #  	puts "ppppppppppppppppppppppppppppppppppppppppp7"

	   #  	event_title = 'Interview of : '+ interviews[i].application.applicant.name 

    #     event = {start:interviews_arr[i].date, title: event_title}
    #     events.push(event)
    #     puts "lllllllllllllllllllllllllllllllllllllllllll"
    #     puts events
    #     puts "lllllllllllllllllllllllllllllllllllllllllll"

	   #  end
	  	return events
	end
end