require "test_helper"

# DataStructureErrorTest < Minitest::Test.
# @abstract
# Tests the component.
class DataStructureErrorTest < Minitest::Test

  # Constants
  ACCEPTABLE_CORE_TYPES = DataStructureError::ACCEPTABLE_CORE_TYPES
  INTERFACE             = DataStructureError::INTERFACE
  DEFAULT_MESSAGE       = DataStructureError::DEFAULT_MESSAGE

  # setup().
  # @abstract
  # Sets fixtures.
  def setup()
    @default_object = DataStructureError.new()
  end

  # teardown().
  # @abstract
  # Cleanup.
  def teardown()
  end

  # test_that_it_has_a_version_number().
  # @abstract
  # A version constant was declared and defined.
  def test_that_it_has_a_version_number
    refute_nil ::DataStructureError::VERSION
  end

  # test_core_types().
  # @abstract
  # ACCEPTABLE_CORE_TYPES contains 'Array', 'Hash', 'Queue', and 'SizedQueue'.
  def test_core_types()

    assert_includes(ACCEPTABLE_CORE_TYPES, 'Array')
    assert_includes(ACCEPTABLE_CORE_TYPES, 'Hash')
    assert_includes(ACCEPTABLE_CORE_TYPES, 'Queue')
    assert_includes(ACCEPTABLE_CORE_TYPES, 'SizedQueue')

  end

  # test_interface_identifier().
  # @abstract
  # The INTERFACE constant refers DataStructureError.
  def test_interface_identifier()
    assert_same(INTERFACE, DataStructureError)
  end

  # test_dm_proper_types().
  # @abstract
  # DEFAULT_MESSAGE lists the acceptable types.
  def test_dm_proper_types()

    assert_includes(DEFAULT_MESSAGE, 'Array')
    assert_includes(DEFAULT_MESSAGE, 'Hash')
    assert_includes(DEFAULT_MESSAGE, 'Queue')
    assert_includes(DEFAULT_MESSAGE, 'SizedQueue')

  end

  # test_acceptability_m_declared().
  # @abstract
  # DataStructureError responds to the acceptability method signature.
  def test_acceptability_m_declared()
    assert_respond_to(DataStructureError, 'acceptable?')
  end

  # test_getter_declared().
  # @abstract
  # The message attribute getter was declared.
  def test_getter_declared()
    assert_respond_to(@default_object, 'message')
  end

  # test_raise_e_declared().
  # @abstract
  # raise_exception was declared.
  def test_raise_e_declared()
    assert_respond_to(@default_object, 'raise_exception')
  end

end
