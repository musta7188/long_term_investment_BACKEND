class ApplicationController < ActionController::API

def secret 
  ENV["MY_SECRET"]
end




def generate_token(data)
  toke = JWT.encode(data, secret)
end


def decode_token 
 token =  request.headers["Authorization"]

JWT.decode(token, secret).first["id"]

end

end
