# frozen_string_literal: true

require 'active_record_postgresql_xverify/load_libs'

ActiveSupport.on_load :active_record do
  require 'active_record/connection_adapters/postgresql_adapter'
  ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.prepend ActiveRecordPostgresqlXverify::ErrorHandler
  ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.prepend ActiveRecordPostgresqlXverify::Verifier
end
