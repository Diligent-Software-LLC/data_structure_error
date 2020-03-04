# DataStructureError [![Gem Version](https://badge.fury.io/rb/data_structure_error.svg)](https://badge.fury.io/rb/data_structure_error) ![Gem](https://img.shields.io/gem/dt/data_structure_error) [![Build Status](https://travis-ci.com/Diligent-Software-LLC/data_structure_error.svg?branch=master)](https://travis-ci.com/Diligent-Software-LLC/data_structure_error)
Defines a `DataStructureError` exception class interface and Abstract Base. 
Declares the DataStructureError library's constants, attributes, and method
 signatures.
 
## Donate

All donations, regardless of quantity, are helpful. Donations support
longevity and continuous improvement. Make at donation at the project's 
[collective page](https://opencollective.com/datastructureerror). Greatly 
appreciated.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "data_structure_error", "~> 1.1.4"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install data_structure_error -v 1.1.4
    
### Unstable or Incomplete Versions

** All versions <= 1.1.3 **

## Source Documentation

### Attributes

* [String] `message`

A DataStructureError explanation.

### Constants

* `ACCEPTABLE_CORE_TYPES`

An array containing the acceptable data structure types. The types are Array, 
Hash, Queue, and SizedQueue.

* `DEFAULT_MESSAGE`

The default error explanation. "The type was neither Array, Hash, Queue, or
 SizedQueue".

* `INTERFACE`

The error name, DataStructureError.

### Methods

There is one class method, `self.acceptable?(any_object)`, and three `public` 
instance methods: the constructor, `initialize(message = DEFAULT_MESSAGE)`,
 `message()`, and `raise_exception(any_object)`.

#### `self.acceptable?(any_object)`

Class method. Verifies the argument is an acceptable data structure. Returns 
true in the case the argument's type is acceptable, and false otherwise.

#### `initialize(message = DEFAULT_MESSAGE)`

Constructor. The message attribute defaults the default message.

#### `message()`

Getter. Returns the message attribute.

#### `raise_exception(any_object)`

In the case the object is unacceptable, raises a DataStructureError, and
 displays the error explanation. 

## Contributing

Refer contributing.md.

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT). Copyright (C) 2020
 Diligent Software LLC. All rights reserved.
