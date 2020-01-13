require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_library_class')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new


class Library < MiniTest::Test

end
