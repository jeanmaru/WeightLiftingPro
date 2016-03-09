class ReportsController < ApplicationController
  def exercise_log
    @report = ExerciseEntryReport.render_html
  end
end

