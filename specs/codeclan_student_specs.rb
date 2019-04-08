require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestCodeclanStudent < MiniTest::Test

  def test_student_name
    student = CodeclanStudent.new("Peter", "E30")
    assert_equal("Peter", student.get_name)

  end

  def test_cohort
    student = CodeclanStudent.new("Peter", "E30")
    assert_equal("E30", student.get_cohort)
  end

  def test_update_student_name
    student = CodeclanStudent.new("Peter", "E30")
    student.set_name("James")
    assert_equal("James", student.get_name)
  end

  def test_update_cohort
    student = CodeclanStudent.new("Peter", "E30")
    student.set_cohort("E31")
    assert_equal("E31", student.get_cohort)
  end

  def test_if_student_can_talk
    student = CodeclanStudent.new("Peter", "E30")
    student.talk
    assert_equal("I can talk", student.talk )
  end

  def test_favourite_language
    student = CodeclanStudent.new("Peter", "E30")
    assert_equal("I like foul language", student.favourite_language("foul"))
  end



end
