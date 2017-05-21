*"* use this source file for your ABAP unit test classes
" Here is your starting point. Solve the tasks step by step
CLASS about_abapunit DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

    METHODS:
      "! We shall contemplate truth by testing reality, via asserts.
      assert_true FOR TESTING,
      "! Enlightenment may be more easily achieved with appropriate messages.
      assert_true_with_message FOR TESTING,
      "! To understand reality, we must compare our expectations against reality.
      assert_equality FOR TESTING,
      "! Sometimes we will ask you to fill in the values.
      fill_in_values FOR TESTING.

  PRIVATE SECTION.
    METHODS:
        zpath_to_enlightment FOR TESTING.

    CONSTANTS:
       default_control_flow TYPE aunit_flowctrl VALUE if_aunit_constants=>no.

ENDCLASS.


CLASS about_abapunit IMPLEMENTATION.

  METHOD assert_true.
    cl_abap_unit_assert=>assert_true(
      EXPORTING
        act              = ||  "this should be true..
        quit             = default_control_flow
    ).

  ENDMETHOD.


  METHOD assert_true_with_message.

    cl_abap_unit_assert=>assert_true(
      EXPORTING
        act              = ||
        msg              = |This should be true -- Please fix this|
        quit             = default_control_flow
    ).

  ENDMETHOD.


  METHOD assert_equality.
    DATA(expected_value) = VALUE i( ).
    DATA(actual_value) = 1 + 1.

    cl_abap_unit_assert=>assert_equals(
        exp = expected_value
        act = actual_value
        quit             = default_control_flow
    ).

  ENDMETHOD.


  METHOD fill_in_values.

    cl_abap_unit_assert=>assert_equals(
        exp = 1 + 1
        act = VALUE i( ) "this should be filled properly
        quit             = default_control_flow
    ).

  ENDMETHOD.


  METHOD zpath_to_enlightment.

  ##todo "should identify number of testing methods to provide ratio...


    cl_abap_unit_assert=>abort(
        msg    = 'Test'
        detail = |This could be a longer Message I assume| &&
                 |And this is the secon line| &&
                 |And the third line \n| &&
                 |And the show continues|
    ).
  ENDMETHOD.

ENDCLASS.
