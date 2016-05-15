require 'thor'
require 'cheatset'

module Cheatset
  module YAML
    class CLI < Thor
      desc 'generate file', 'Generates cheatsheet out of a file'
      def generate(file)
        parser = Cheatset::YAML::Parser.new(file)
        context = Cheatset::DSL::Context.new(parser.to_rb)
        context.generate
      end
    end
  end
end
