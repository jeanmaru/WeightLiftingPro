class ExerciseEntryReport < Ruport::Controller
  stage :exercise_log

  def setup
  end


  class HTML < Ruport::Formatter::HTML
    renders :html, :for => ExerciseEntryReport

    build :exercise_log do
      output << erb(RAILS_ROOT + "/app/views/reports/exercise_entry.html.erb")
    end
    
  end
  end