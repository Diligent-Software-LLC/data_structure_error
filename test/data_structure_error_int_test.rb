require_relative "test_helper"

# DataStructureErrorIntTest.
# @class_description
#   Tests the DataStructureError interface.
class DataStructureErrorIntTest < Minitest::Test

  # Constants
  CLASS       = DataStructureErrorInt
  FIRST_INDEX = 0

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   and .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Sets fixtures.
  def setup()
  end

  # test_methods_dec().
  # @description
  #   initialize, message, and message= were declared.
  def test_methods_dec()

    i_methods  = CLASS.instance_methods(false)
    priv_i_m   = CLASS.private_instance_methods(false)
    expected_1 = :initialize
    assert_includes(priv_i_m, expected_1)
    expected_2 = :message
    assert_includes(i_methods, expected_2)
    expected_3 = :message=
    assert_includes(priv_i_m, expected_3)

  end

  # test_dm_def().
  # @description
  #   DEFAULT_MESSAGE was defined.
  def test_dm_def()
    assert(CLASS.const_defined?(:DEFAULT_MESSAGE, false))
  end

  # test_dm_immut().
  # @description
  #   DEFAULT_MESSAGE is dynamically immutable.
  def test_dm_immut()
    assert_raises(RuntimeError) {
      CLASS::DEFAULT_MESSAGE[FIRST_INDEX] = 'm'
    }
  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
