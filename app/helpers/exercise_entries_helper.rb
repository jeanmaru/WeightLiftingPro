module ExerciseEntriesHelper
  def exercise_name
    @exercise_entries.exercise.sample_exercise.name
  end
end
