# encoding: utf-8

module Cql
  module Execution
    class Info
      # @return [String] keyspace used for the query
      attr_reader :keyspace
      # @return [Cql::Statement] original statement
      attr_reader :statement
      # @return [Cql::Execution::Options] original execution options
      attr_reader :options
      # @return [Array<Cql::Host>] a list of attempted hosts
      attr_reader :hosts
      # Actual consistency used, it can differ from consistency in {Cql::Execution::Info#options} if a retry policy modified it. One of `:any, :one, :two, :three, :quorum, :all, :local_quorum, :each_quorum, :serial, :local_serial, :local_one`
      # @return [Symbol]
      attr_reader :consistency
      # @return [Integer] number of retries
      attr_reader :retries
      # Returns {Cql::Execution::Trace} if `trace: true` was passed to {Cql::Session#execute} or {Cql::Session#execute_async}
      # @return [Cql::Execution::Trace, nil]
      attr_reader :trace

      # @private
      def initialize(keyspace, statement, options, hosts, consistency, retries, trace)
        @keyspace    = keyspace
        @statement   = statement
        @options     = options
        @hosts       = hosts
        @consistency = consistency
        @retries     = retries
        @trace       = trace
      end
    end
  end
end
