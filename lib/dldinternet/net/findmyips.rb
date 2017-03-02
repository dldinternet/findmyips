#!/usr/bin/env ruby

require 'ipaddr'
require 'net/http'
require 'socket'
require 'rubygems'
require 'colorize'

module DLDInternet
  module Net
    module FindMyIPs
      #
      # Find IP using simple query to DYNDNS.org & Internal facing interface
      #

      def getLocal
        orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  #RevDNS = Off, so dont resolve!

        UDPSocket.open do |sox|
          sox.connect '8.8.8.8', 1 #74.125.227.32', 1 #this is Google, but we dont actually send anything, just looking for how machine would if we did :p
          sox.addr.last
        end
      rescue SocketError => e # sox shit happens?
        puts "Socket Error!".light_red
        puts "\t=> #{e}".light_red
      ensure
        Socket.do_not_reverse_lookup = orig
      end
      alias :getInternal getLocal

      #Simply fetch the external from dyndns, not so much magic :p
      def getPublic(url = 'checkip.dyndns.org', timeout = 5, maxtries = 10, report_progress = true)
        tries= 0
        uri = URI.parse(url)
        uri = URI.parse("http://#{url}") unless uri and uri.scheme
        while true
          begin
            dyn = ::Net::HTTP.new(uri.host, uri.port)
            dyn.open_timeout = timeout
            dyn.read_timeout = timeout
            unless dyn.nil?
              resp = dyn.get(uri.path)
              unless resp.nil?
                ip = resp.read_body.match(/\d+\.\d+\.\d+\.\d+/)
                return ip[0]
              end
            end
          rescue Timeout::Error => e
            #puts e.class.to_s+" "+e.message
            puts "No response from #{uri.host}:#{uri.port} within #{timeout} seconds".light_red if report_progress
            tries += 1
            raise StandardError.new("Max retries exceeded") if tries >= maxtries
          end
        end
      end
      alias :getExternal getPublic
    end
  end
end

#EOF
