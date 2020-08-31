class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour

    # if time.strftime("%k").to_i < 12
    #   resp.write "Good Morning!"
    # if time.strftime("%k").to_i < 12
    #   resp.write "Good Morning!"
    # else
      if time < 12
        resp.write "Good Morning!"
      else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
