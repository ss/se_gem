require 'test/unit'
require "#{File.dirname(__FILE__)}/../../../lib/se/debug/debug"

class DebugTest < Test::Unit::TestCase

  def test_class_hierarchy
    result = SE::Debug.class_hierarchy(RuntimeError)
    assert_match "RuntimeError includes: []\n", result
    assert_match "extends: StandardError includes: []\n", result
    assert_match "extends: Exception includes: []\n", result
    assert_match /extends: Object includes: \[(CoreExtensions::Object,)?Kernel\]/, result
  end

end


