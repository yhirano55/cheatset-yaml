require 'yaml'
require 'tempfile'
require 'erb'

module Cheatset
  module YAML
    class Parser
      def initialize(file)
        @filename = "#{Time.now.to_i}.rb"
        @resource = ::YAML.load_file(file).fetch('cheatsheet', {})
      end

      def to_rb
        Tempfile.open(@filename).tap do |f|
          f.write ERB.new(template, nil, '-').result(binding)
          f.rewind
        end
      end

      private

      def template
        File.read template_path
      end

      def template_path
        File.expand_path('../../template/cheatsheet.erb', __FILE__)
      end
    end
  end
end
