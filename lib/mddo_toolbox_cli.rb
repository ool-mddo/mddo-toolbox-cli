# frozen_string_literal: true

require 'logger'
require_relative 'mddo_rest_api_client'
require_relative 'mddo_toolbox_cli_version'

# Linkdown simulation module and its common functions
module MddoToolboxCli
  # logger for linkdown simulation
  @logger = Logger.new($stderr)
  @logger.progname = 'mddo-toolbox'
  @logger.level = Logger::INFO

  # rest api client (http client)
  @rest_client = MddoRestApiClient.new(@logger)

  module_function

  # @param [String] severity
  def change_log_level(severity)
    @logger.level = case severity
                    when /fatal/i then Logger::FATAL
                    when /error/i then Logger::ERROR
                    when /warn/i then Logger::WARN
                    when /debug/i then Logger::DEBUG
                    else Logger::INFO # default
                    end
  end

  # @return [Logger]
  def logger
    @logger
  end

  # @return [MddoRestApiClient]
  def rest_api
    @rest_client
  end
end
