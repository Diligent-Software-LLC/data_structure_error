require "data_structure_error/version"

# DataStructureError < ArgumentTypeError.
# Creational pattern: Abstract Factory.
# @abstract: defines a DataStructureError exception class interface. Subclasses
# ArgumentTypeError.
class DataStructureError < ArgumentTypeError

  # initialize(message = nil).
  # @abstract: the constructor.
  # @param message: the exception explanation.
  def initialize(message = nil)
  end

  # message().
  # @abstract: getter method. Gets and returns the String message.
  def message()
  end

  # try(argument_type).
  # @abstract: in the case the argumentis a data type or an unacceptable data
  # structure, raises. Takes an unknown type object.
  # @param argument_type: a presumed data structure object.
  def try(argument_type)
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. Sets the message attribute the argued explanation String.
  # @param explanation: a String explaining the exception.
  def message=(explanation)
  end

  # choose(explanation).
  # @abstract:
  # Chooses the appropriate explanation. In the case no explanation String was
  # argued, the default explanation is the explanation.
  # @param explanation: a String or NilClass object.
  def choose(explanation)
  end

  # data_structure?(presumed).
  # @abstract:
  # Boolean method. Returns true in the case the object is an acceptable data
  # structure. Returns false otherwise.
  # @param presumed: a presumed acceptable data structure object.
  def data_structure?(presumed)
  end

end
