
require 'minitest/autorun'
require 'tplink_smartplug'

class TplinkSmartplugTest < Minitest::Test

  def setup
    @hostname = ENV["TPLINK_HOSTNAME"]
    @port = ENV["TPLINK_PORT"]

  end


  def test_get_data_command

    cmd = '{"system":{"get_sysinfo":null}}'

    result = TplinkSmartplug::Api.get_data(@hostname,@port,cmd)

    assert_equal "hello world", result.keys

  end


end