# DataStructureError [![Gem Version](https://badge.fury.io/rb/data_structure_error.svg)](https://badge.fury.io/rb/data_structure_error) ![Gem](https://img.shields.io/gem/dt/data_structure_error)
Defines a `DataStructureError` exception class interface and Abstract Base. 
Subclasses `ArgumentTypeError`. There are four instance method signatures and 
one class method signature. Four signatures are `public`, and one is `private`. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem "data_structure_error", "~> 1.1.3"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_structure_error -v 1.1.3

## Usage
There are five method signatures. Four are `public`, and one is `private`.

### Public methods
There is one class method, `self.acceptable?(argument_o)`, and three `public` 
instance methods: the constructor, `message()`, and `raise_exception(argument_type)`.

#### `self.acceptable?(argument_o)`

Class method. Verifies the argument is an acceptable data structure. Returns 
true in the case the argument's type is acceptable, and false otherwise.

#### `initialize(message = nil)`
The constructor. Takes a `String` or `NilClass` object explaining the exception.

#### `message()`
Getter method. Gets and returns the `String` message.

#### `raise_exception(argument_type)`
In the case the argument is a data type or an unacceptable data structure, 
raises. Takes an unknown type object. Takes a presumed data structure object.

### Private methods
There is one private instance signature. The `message=(explanation)` signature.

#### `message=(explanation)`
Setter method. Sets the message attribute the argued explanation `String`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, 
run `rake test` to run the tests. You can also run `bin/console` for an 
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/Diligent-Software-LLC/data_structure_error. This project is
 intended 
to be a safe, welcoming space for collaboration, and contributors are expected 
to adhere to the [Contributor Covenant](http://contributor-covenant.org) code 
of conduct.

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DataStructureError project’s codebases, issue
 trackers, chat rooms and mailing lists is expected to follow the 
 [code of conduct](https://github.com/Diligent-Software-LLC/data_structure_error/blob/master/CODE_OF_CONDUCT.md).
