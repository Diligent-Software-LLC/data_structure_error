# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require "data_structure_error/version"

# DataStructureError < ArgumentTypeError.
# @abstract: defines a DataStructureError exception class interface. Subclasses
# ArgumentTypeError.
class DataStructureError < ArgumentTypeError

  # self.acceptable?(argument_o).
  # @abstract:
  # Class method. Verifies the argument is an acceptable data structure.
  # @return: true in the case the argument's type is acceptable, and false
  # otherwise.
  def self.acceptable?(argument_o)
  end

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
