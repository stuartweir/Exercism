# frozen_string_literal: true

class HighScores
  attr_reader :scores

  def initialize(scores = [])
    @scores = scores
  end

  def latest
    @scores[-1]
  end

  def personal_best
    @scores.max
  end

  def personal_top
    @scores.sort_by { |num| -num }[0..2]
  end

  def report
    last = latest
    best = personal_best
    str = "Your latest score was #{latest}."
    return str + " That's your personal best!" if last >= best
    str + " That's #{best - last} short of your personal best!"
  end
end
