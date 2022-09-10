require 'json'
require_relative '../classes/label'
require_relative 'handle_json'

module LabelPersist
  def persist_label
    labels_arr = []
    @labels.each do |label|
      labels_arr << { title: label.title, color: label.color }
    end
    write_json(labels_arr, 'labels.json')
  end

  def load_labels
    file = File.read('labels.json')
    JSON
      .parse(file)
      .each { |label| @labels.push(Label.new(label['title'], label['color'])) }
  end
end
