# DataStructureError
Defines a `DataStructureError` exception class interface. An Abstract Factory. 
Subclasses `ArgumentTypeError`. There are six instance method signatures. Three 
signatures are `public`, and three are `private`. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_structure_error'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_structure_error

## Usage
There are six method signatures. Three are `public`, and three are `private`.

### Public methods
There are three `public` instance methods. The constructor, `message()`, and 
`try(argument_type)`.

#### `initialize(message = nil)`
The constructor. Takes a `String` or `NilClass` object explaining the exception.

#### `message()`
Getter method. Gets and returns the `String` message.

#### `try(argument_type)`
In the case the argument is a data type or an unacceptable data structure, 
raises. Takes an unknown type object. Takes a presumed data structure object.

### Private methods
There are three private instance signatures. The `message=(explanation)`, the 
`choose(explanation)`, and the `data_structure?(presumed)` signatures.

#### `message=(explanation)`
Setter method. Sets the message attribute the argued explanation `String`.

#### `choose(explanation)`
Chooses the appropriate explanation. In the case no explanation `String` was 
argued, the default explanation is the explanation.

#### `data_structure?(presumed)`
Boolean method. Returns `true` in the case the object is an acceptable data 
structure. Returns `false` otherwise. Takes a presumed acceptable data structure 
object.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, 
run `rake test` to run the tests. You can also run `bin/console` for an 
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/scientist8202/data_structure_error. This project is intended 
to be a safe, welcoming space for collaboration, and contributors are expected 
to adhere to the [Contributor Covenant](http://contributor-covenant.org) code 
of conduct.

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DataStructureError project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/data_structure_error/blob/master/CODE_OF_CONDUCT.md).
