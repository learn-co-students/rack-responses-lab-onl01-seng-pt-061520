class Application 
    def call(env)
        #assign rack response to a variable
        resp = Rack::Response.new
        #assign time to a variable
        time_now = Time.now
        if time_now.hour >= 12 #if hour is later than 12pm display "Good Afternoon" else display "Good Morning."
            resp.write "Good Afternoon"
        else
            resp.write "Good Morning"
        end
        resp.finish
    end 


end 