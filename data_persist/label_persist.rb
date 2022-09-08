require "json"
require_relative "../classes/label"
require_relative "handle_json"

module LabelPersist
  def persist_label
    labels_arr = []
    @labels.each do |label|
      labels_arr << {
        title: label.title,
        color: label.color,
      }
    end
    write_json(labels_arr, "labels.json")
  end
end
