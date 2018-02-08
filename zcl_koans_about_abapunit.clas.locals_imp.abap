*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_koans_demo_constraint DEFINITION.
  PUBLIC SECTION.
    INTERFACES if_constraint.
ENDCLASS.

CLASS lcl_koans_demo_constraint IMPLEMENTATION.

  METHOD if_constraint~is_valid.
    DATA path_to_enlightenment TYPE string.

    path_to_enlightenment = data_object.

    result = abap_false.
    CHECK path_to_enlightenment = |I´m on my way!|.
    result = abap_true.

  ENDMETHOD.

  METHOD if_constraint~get_description.
    APPEND |ABAP Koans with Constraint raises an Error| TO result.
  ENDMETHOD.

ENDCLASS.
