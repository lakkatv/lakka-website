module DateHelper
  def date_for date_as_string
    attribute_to_time(date_as_string).__nanoc_to_iso8601_date
  end
end
include DateHelper
