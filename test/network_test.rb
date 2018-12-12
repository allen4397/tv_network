require 'minitest/autorun'
require 'minitest/pride'
require './lib/network'
require './lib/show'
require './lib/character'

class NetworkTest < Minitest::Test
  def test_it_exists
    network = Network.new

    assert_instance_of Network, network
  end
end
