require 'k_means'

class Attempt < ApplicationRecord

    def self.create_by_poll(answers)
    raw_values = answers.values.map { |a| a.respond_to?(:values) ? a.values : a }.flatten.map(&:to_i)

    Attempt.create(answers: raw_values)
  end

  def self.clusters
    attempts = Attempt.order(:id).pluck(:answers)


    result = KMeans.new(attempts, :distance_measure => :euclidean_distance, :centroids => 4)


    result.view.sort_by(&:size)
  end

  def cluster
    Attempt.clusters.index { |i| i.include?(id - 1) }
  end

end
