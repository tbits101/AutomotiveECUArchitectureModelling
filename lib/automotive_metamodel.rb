require 'rgen/environment'
require 'rgen/metamodel_builder'

module AutomotiveMetamodel
  extend RGen::MetamodelBuilder::ModuleExtension

  class Element < RGen::MetamodelBuilder::MMBase
    has_attr 'name', String
  end

  class Vehicle < Element
  end

  class ECU < Element
  end

  class Hardware < Element
  end

  class Software < Element
  end

  class Package < Element
  end

  class Component < Element
  end

  class Port < Element
  end

  class Interface < Element
  end

  class SenderReceiverInterface < Interface
  end

  class ClientSenderInterface < Interface
  end

  class Operation < Element
  end

  class DataElement < Element
  end

  class Class < Element
  end

  class Attribute < Element
  end

  class Method < Element
  end

  ECU.contains_many 'software', Software, 'ecu'
  ECU.contains_one 'hardware', Hardware, 'ecu'
  Software.contains_many 'package', Package, 'software'
  Package.contains_many 'component', Component, 'package'
  Component.contains_many 'port', Port, 'component'
  Port.many_to_one 'interface', Interface, 'port'
  SenderReceiverInterface.contains_many 'element', DataElement, 'interface'
  ClientSenderInterface.contains_many 'operation', Operation, 'interface'
  Component.contains_many 'class', Class, 'component'
  Class.contains_many 'attribute', Attribute, 'class'
  Class.contains_many 'method', Method, 'class'
end
