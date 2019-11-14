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

  # raise_exception(argument_type).
  # @abstract: in the case the argumentis a data type or an unacceptable data
  # structure, raises. Takes an unknown type object.
  # @param argument_type: a presumed data structure object.
  def raise_exzception(argument_type)
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. Sets the message attribute the argued explanation String.
  # @param explanation: a String explaining the exception.
  def message=(explanation)
  end

end
