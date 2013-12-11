# -*- coding: utf-8 -*-
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

post '/' do
  name = params[:name].capitalize
  agent = user_agent_msg(request.user_agent)
  haml :hola, locals: {name: name, agent: agent}
end

def user_agent_msg(agent)
  case agent
  when /Firefox/
    "Gracias por usar Firefox, el mejor navegador del mundo"
  when /Chrome/
    "Estás usando Chrome"
  when /IE/
    "Vas a arder en el infierno"
  when /Opera/
    "Sos uno de los pocos pero buenos que usa Opera"
  when /Safari/
    "Estás usando el nuevo IE, felicitaciones :)"
  else
    "Estás usando algo que no identifico"
  end
end
