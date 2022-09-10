puts 'Hello, World!'

require_relative 'lib/automotive_metamodel'

require 'rgen/environment'
require 'rgen/model_builder'


env = RGen::Environment.new
result = RGen::ModelBuilder.build(AutomotiveMetamodel, env) do
  sys = ecu "TestECU" do
    software "SW"
    hardware "HW"
  end
end