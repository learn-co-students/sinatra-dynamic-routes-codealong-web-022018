require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @person_name = params[:name]
    "Goodbye, #{@person_name}."
  end

  get '/multiply/:num_one/:num_two' do
    @num_one = params[:num_one].to_f
    @num_two = params[:num_two].to_f
    (@num_one * @num_two).to_s
  end

end
