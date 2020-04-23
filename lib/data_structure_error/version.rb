# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

# DataStructureErrorInt.
# @abstract
# @class_description
#   Declares a DataStructureError exception class interface.
# @attr message [String]
#   An error explanation.
class DataStructureErrorInt < TypeError
  VERSION = "3.0.0".freeze()
end
