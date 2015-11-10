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

    # def last_period_dates(period='monthly')
    # bound_dates = []

    # if period == 'monthly'
    #   bound_dates[0] = self.prev_month.at_beginning_of_month
    #   bound_dates[1] = self.prev_month.at_end_of_month
    # end

    # if period == 'quarterly'
    #   bound_dates[0] = self.prev_quarter.at_beginning_of_quarter
    #   bound_dates[1] = self.prev_quarter.at_end_of_quarter
    # end

    # if period == 'biannually'
    #   bound_dates[0] = self.prev_semester.at_beginning_of_semester
    #   bound_dates[1] = self.prev_semester.at_end_of_semester
    # end

    # bound_dates
    # end

    # def next_period_dates(period='monthly')
    # bound_dates = []

    # if period == 'monthly'
    #   bound_dates[0] = self.next_month.at_beginning_of_month
    #   bound_dates[1] = self.next_month.at_end_of_month
    # end

    # if period == 'quarterly'
    #   bound_dates[0] = self.next_quarter.at_beginning_of_quarter
    #   bound_dates[1] = self.next_quarter.at_end_of_quarter
    # end

    # if period == 'biannually'
    #   bound_dates[0] = self.next_semester.at_beginning_of_semester
    #   bound_dates[1] = self.next_semester.at_end_of_semester
    # end

    # bound_dates
    # end

    # def current_period_dates(period='monthly')
    # bound_dates = []

    # if execution == 'monthly'
    #   bound_dates[0] = self.at_beginning_of_month
    #   bound_dates[1] = self.at_end_of_month
    # end

    # if execution == 'quarterly'
    #   bound_dates[0] = self.at_beginning_of_quarter
    #   bound_dates[1] = self.at_end_of_quarter
    # end

    # if execution == 'biannually'
    #   bound_dates[0] = self.at_beginning_of_semester
    #   bound_dates[1] = self.at_end_of_semester
    # end

    # bound_dates
    # end

    # def offset_period_dates(period='monthly',offset=0)
    # bound_dates = self.current_period_dates

    # offset.abs.times do |time|
    #   if offset > 0
    #     bound_dates = bound_dates[0].next_period_dates(period)
    #   elsif offset < 0
    #     bound_dates = bound_dates[0].prev_period_dates(period)
    #   end
    # end

    # bound_dates
    # end
    # end
end