using Genie.Router
using Genie.Requests

route("/") do

  serve_static_file("welcome.html")
end

using Genie
using GenieAuthentication

using Genie, Genie.Router ,Genie.Assets , JSON
Genie.config.websockets_server = true
Genie.config.webchannels_default_route = "Bank"

using BankDetails
using Users

route("/") do 
  Assets.channels_support()

  
end

d= Dict()

channel("/Bank/create_acc") do 
  a = params()[:WS_CLIENT]
  h = hash(a)
  s = string(h)
  id = params(:payload)["emailid"]
  nam = params(:payload)["name"]
  save(User(accno=s, uid=id, name=nam))
  d[s] = a
  return s

  
end


  
  



