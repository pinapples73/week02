require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_student_class')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new('Gordon', 'G17', 'nothing')
  end


  #------TEST GETTERS
  def test_student_name
    assert_equal('Gordon', @student.student_name)
  end

  def test_cohort
    assert_equal('G17', @student.cohort)
  end

  #------TEST setters
  def test_set_student_name
    @student.set_student_name('Jim-bob')
    assert_equal('Jim-bob', @student.student_name)
  end

  def test_set_cohort
    @student.set_cohort('EAST17')
    assert_equal('EAST17', @student.cohort)
  end

  def test_talk
    @student.talk('I can talk')
    assert_equal('I can talk', @student.what_to_say)
  end

  def test_fav_language
    @student.set_fav_language('Ruby')
    assert_equal('I love Ruby', @student.what_to_say)
  end

end
