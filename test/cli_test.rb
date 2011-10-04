require_relative 'test_helper'

class CliTest < Test::Unit::TestCase

  def test_flunk
    flunk
  end

  def test_truth
    assert true
  end

end