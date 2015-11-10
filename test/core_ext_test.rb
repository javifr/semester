require 'test_helper'

class CoreExtTest < ActiveSupport::TestCase
  #DATE TIME TESTS
  def test_date_time_beginning_semester
    date = DateTime.new(2015,4,3)
    date_to = DateTime.new(2015,1,1)
    assert_equal date.beginning_of_semester, date_to
    assert_equal date.at_beginning_of_semester, date_to
  end
  def test_date_time_end_semester
    date = DateTime.new(2015,4,3)
    date_to = DateTime.new(2015,6,30).end_of_day
    assert_equal date.end_of_semester, date_to
    assert_equal date.end_of_semester, date_to
  end
  def test_date_time_prev_semester
    date = DateTime.new(2015,4,3)
    date_to = DateTime.new(2014,10,3)
    assert_equal date.prev_semester, date_to
    assert_equal date.last_semester, date_to
  end
  def test_date_time_next_semester
    date = DateTime.new(2015,4,3)
    date_to = DateTime.new(2015,10,3)
    assert_equal date.next_semester, date_to
  end

  # DATE TESTS
  def test_date_beginning_semester
    date = Date.new(2015,4,3)
    date_to = Date.new(2015,1,1)
    assert_equal date.beginning_of_semester, date_to
    assert_equal date.at_beginning_of_semester, date_to
  end
  def test_date_end_semester
    date = Date.new(2015,4,3)
    date_to = Date.new(2015,6,30)
    assert_equal date.end_of_semester, date_to
    assert_equal date.end_of_semester, date_to
  end
  def test_date_prev_semester
    date = Date.new(2015,4,3)
    date_to = Date.new(2014,10,3)
    assert_equal date.prev_semester, date_to
    assert_equal date.last_semester, date_to
  end
  def test_date_next_semester
    date = Date.new(2015,4,3)
    date_to = Date.new(2015,10,3)
    assert_equal date.next_semester, date_to
  end

end