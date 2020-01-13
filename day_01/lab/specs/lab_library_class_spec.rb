require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_library_class')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class LibraryInventory < MiniTest::Test

end

# I CANT GET ANY FURTHER AS I KEEP GETTING A SUPERCLASS MISMATCH - i can see whats wrong
