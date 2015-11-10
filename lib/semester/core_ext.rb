module Calculations
  def beginning_of_semester
    first_semester_month = [7, 1].detect { |m| m <= month }
    beginning_of_month.change(:month => first_semester_month)
  end
  alias :at_beginning_of_semester :beginning_of_semester

  def end_of_semester
    last_semester_month = [6, 12].detect { |m| m >= month }
    beginning_of_month.change(:month => last_semester_month).end_of_month
  end
  alias :at_end_of_semester :end_of_semester

  def prev_semester
    months_ago(6)
  end
  alias_method :last_semester, :prev_semester

  def next_semester
    months_since(6)
  end
end

Date.class_eval do
  include Calculations
end

DateTime.class_eval do
  include Calculations
end