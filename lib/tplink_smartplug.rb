require 'socket'
require 'json'
require "tplink_smartplug/version"

module TplinkSmartplug

  class Api

    def self.get_data(hostname, port, cmd)
      s = TCPSocket.open(hostname, port)
      enc_s = encrypt(cmd)
      s.write(enc_s)
      data = s.read(2048)
      s.close
      result = decrypt(data)

      return JSON.parse(result)

    end


    private

    def encrypt(cmd)
      key = 171
      result = "\0\0\0\0"
      cmd.each_byte do |i|
        a = key ^ i
        key = a
        result = result + a.chr
      end
      return result
    end

    def decrypt(data)
      data = data[4..data.length - 1]
      key = 171
      result = ""

      data.each_byte do |i|
        a = key ^ i
        key = i
        result = result + a.chr
      end
      return result
    end


  end
end
