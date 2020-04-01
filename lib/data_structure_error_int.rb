# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative "data_structure_error/version"

# DataStructureErrorInt.
# @abstract
# @class_description
#   Declares a DataStructureError exception class interface.
# @attr message [String]
#   An error explanation.
class DataStructureErrorInt < TypeError

  DEFAULT_MESSAGE =
      'The type was neither Array, Hash, Queue, orSizedQueue.'.freeze()

  # initialize(message = DEFAULT_MESSAGE).
  # @description
  #   Initializes DataStructureError instances.
  # @param message [String]
  #   An error explanation. Defaults the default message.
  # @return [DataStructureError]
  #   An instance.
  def initialize(message = DEFAULT_MESSAGE)
  end

  # message().
  # @description
  #   Gets the message attribute's reference.
  # @return [String]
  #   The error explanation.
  def message()
  end

  private

  # message=(explanation = nil).
  # @description
  #   Sets the message attribute.
  # @param explanation [String]
  #   An error explanation. Displays in STDOUT.
  def message=(explanation = nil)
  end

end
