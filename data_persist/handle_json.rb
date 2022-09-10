require 'json'

module HandlerFile
  def write_json(array, filename)
    opts = {
      array_nl: "\n",
      object_nl: "\n",
      indent: '  ',
      space_before: ' ',
      space: ' '
    }
    File.write(filename, JSON.generate(array, opts))
  end
end
