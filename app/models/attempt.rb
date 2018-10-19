require 'kmeans/pair'
require 'kmeans/pearson'
require 'kmeans/cluster'

class Attempt < ApplicationRecord
  def self.create_by_poll(answers)
    raw_values = answers.values.map { |a| a.respond_to?(:values) ? a.values : a }.flatten.map(&:to_i)

    Attempt.create(answers: raw_values)
  end

  def self.clusters
    attempts = Attempt.all.map { |a| [a.id, a.answers.each_with_index.map { |an, i| [i, an] }.to_h ]}.to_h

    result = Kmeans::Cluster.new(attempts, {
      :centroids => 3,
      :loop_max => 10
    })
    result.make_cluster

    result.cluster.values.sort_by(&:size)
  end

  def cluster
    Attempt.clusters.index { |i| i.include?(id) }
  end
end
