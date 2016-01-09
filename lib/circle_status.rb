require 'circle_status/version'
require 'circle_status/script'

require 'circleci'
require 'git'
require 'awesome_print'

module CircleStatus
  class ProjectError < StandardError; end
end
