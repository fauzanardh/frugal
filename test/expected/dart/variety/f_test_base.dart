// Autogenerated by Frugal Compiler (2.22.2)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart' as thrift;
import 'package:variety/variety.dart' as t_variety;
import 'package:actual_base_dart/actual_base_dart.dart' as t_actual_base_dart;
import 'package:intermediate_include/intermediate_include.dart' as t_intermediate_include;
import 'package:validStructs/validStructs.dart' as t_validStructs;
import 'package:ValidTypes/ValidTypes.dart' as t_ValidTypes;
import 'package:subdir_include_ns/subdir_include_ns.dart' as t_subdir_include_ns;

class TestBase implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = new thrift.TStruct("TestBase");
  static final thrift.TField _BASE_STRUCT_FIELD_DESC = new thrift.TField("base_struct", thrift.TType.STRUCT, 1);

  t_actual_base_dart.thing base_struct;
  static const int BASE_STRUCT = 1;


  TestBase() {
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case BASE_STRUCT:
        return this.base_struct;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case BASE_STRUCT:
        if (value == null) {
          base_struct = null;
        else if (value is t_actual_base_dart.thing) {
          base_struct = value;
        }

        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case BASE_STRUCT:
        return base_struct == null;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(thrift.TProtocol iprot) {
    thrift.TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == thrift.TType.STOP) {
        break;
      }
      switch(field.id) {
        case BASE_STRUCT:
          if(field.type == thrift.TType.STRUCT) {
            base_struct = new t_actual_base_dart.thing();
            base_struct.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    validate();
  }

  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(this.base_struct != null) {
      oprot.writeFieldBegin(_BASE_STRUCT_FIELD_DESC);
      base_struct.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TestBase(");

    ret.write("base_struct:");
    if(this.base_struct == null) {
      ret.write("null");
    } else {
      ret.write(this.base_struct);
    }

    ret.write(")");

    return ret.toString();
  }

  bool operator ==(Object o) {
    if(o == null || !(o is TestBase)) {
      return false;
    }
    TestBase other = o as TestBase;
    return this.base_struct == other.base_struct;
  }

  int get hashCode {
    var value = 17;
    value = (value * 31) ^ base_struct.hashCode;
    return value;
  }

  TestBase clone({
    t_actual_base_dart.thing base_struct: null,
  }) {
    return new TestBase()
      ..base_struct = base_struct ?? this.base_struct;
  }

  validate() {
  }
}
