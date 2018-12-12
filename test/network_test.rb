require 'minitest/autorun'
require 'minitest/pride'
require './lib/network'
require './lib/show'
require './lib/character'

class NetworkTest < Minitest::Test
  def test_it_exists
    network = Network.new("NBC")

    assert_instance_of Network, network
  end

  def test_it_has_attributes
    nbc = Network.new("NBC")

    assert_equal "NBC", nbc.name
    assert_equal [], nbc.shows
  end
end
