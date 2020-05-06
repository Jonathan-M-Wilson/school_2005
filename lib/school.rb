
class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def calc_time_in_school_day
    (@start_time.to_i + hours_in_school_day)
  end

  def end_time
    "#{calc_time_in_school_day}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    standard_names = []
    @student_names.each do |name|
      standard_names << name.capitalize
    end
    return standard_names
  end

  def calc_end_time_to_clock_time
    end_time_to_clock_time = []
    if end_time.to_i > 12
    end_time_to_clock_time << (end_time.to_i - 12)
    end
    return end_time_to_clock_time
  end

  def convert_end_time_to_clock_time
  "#{calc_end_time_to_clock_time[0]}:00"
  end

end
