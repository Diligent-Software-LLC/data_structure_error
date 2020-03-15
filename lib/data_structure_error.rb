# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require "data_structure_error/version"

# DataStructureError < TypeError.
# @abstract
# Declares a DataStructureError exception class interface.
class DataStructureError < TypeError

  ACCEPTABLE_CORE_TYPES = ['Array', 'Hash', 'Queue', 'SizedQueue', 'Node'].freeze()
  DEFAULT_MESSAGE       = 'The type was neither Array, Hash, Queue,
SizedQueue, or Node.'
  INTERFACE             = DataStructureError

  # self.acceptable?(any_object).
  # @abstract
  # Class method. Verifies an object is an acceptable type.
  # @param [Object] any_object
  # Any object.
  # @return [TrueClass, FalseClass] acceptable
  # True in the case the type is acceptable. False otherwise.
  def self.acceptable?(any_object)
  end

  # initialize(message = DEFAULT_MESSAGE)
  # @abstract
  # Constructor. The message attribute defaults DEFAULT_MESSAGE.
  # @param [String] message
  # An explanation error.
  def initialize(message = DEFAULT_MESSAGE)
  end

  # message().
  # @abstract
  # Getter method. Gets the message attribute.
  # @return [String] @message
  # The message attribute.
  def message()
  end

  # raise_exception(any_object).
  # @abstract
  # In the case the argument is an unacceptable type, raises
  # DataStructureError.
  # @param [Object] any_object
  # Any object.
  def raise_exception(any_object)
  end

  private

  # message=(explanation).
  # @abstract
  # Setter. Sets the message attribute the explanation.
  # @param [String] explanation
  # An error explanation.
  def message=(explanation)
  end

end
