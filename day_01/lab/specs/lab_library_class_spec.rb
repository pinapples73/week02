require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_library_class')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ])
  end

  def test_books_title
    assert_equal('lord_of_the_rings', @library.book_title)
  end

end
