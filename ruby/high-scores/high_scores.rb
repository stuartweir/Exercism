# frozen_string_literal: true

class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    "Your latest score was #{latest}. " + praise_and_encouragement
  end

  private

  def praise_and_encouragement
    if latest_personal_best?
      "That's your personal best!"
    else
      "That's #{personal_best - latest} short of your personal best!"
    end
  end

  def latest_personal_best?
    latest >= personal_best
  end
end
