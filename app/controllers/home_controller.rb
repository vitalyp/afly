require 'gmail'

class HomeController < ApplicationController

  def index
    uname = 'taraskova16@gmail.com'
    u_pass = ENV['gmail_password']

    @inbox_count = -1
    @unread = -1
    @read = -1
    @gmail = Gmail.new(uname, u_pass)


    @inbox_count = @gmail.inbox.count
    @unread = @gmail.inbox.count(:unread)
    @read = @gmail.inbox.count(:read)      
    @emails = @gmail.inbox.emails
  end

end
