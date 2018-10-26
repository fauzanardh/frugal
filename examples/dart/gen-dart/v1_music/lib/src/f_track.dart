// Autogenerated by Frugal Compiler (2.22.2)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart' as thrift;
import 'package:v1_music/v1_music.dart' as t_v1_music;

/// Comments (with an @ symbol) will be added to generated code.
class Track implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = new thrift.TStruct("Track");
  static final thrift.TField _TITLE_FIELD_DESC = new thrift.TField("title", thrift.TType.STRING, 1);
  static final thrift.TField _ARTIST_FIELD_DESC = new thrift.TField("artist", thrift.TType.STRING, 2);
  static final thrift.TField _PUBLISHER_FIELD_DESC = new thrift.TField("publisher", thrift.TType.STRING, 3);
  static final thrift.TField _COMPOSER_FIELD_DESC = new thrift.TField("composer", thrift.TType.STRING, 4);
  static final thrift.TField _DURATION_FIELD_DESC = new thrift.TField("duration", thrift.TType.DOUBLE, 5);
  static final thrift.TField _PRO_FIELD_DESC = new thrift.TField("pro", thrift.TType.I32, 6);

  String title;
  static const int TITLE = 1;
  String artist;
  static const int ARTIST = 2;
  String publisher;
  static const int PUBLISHER = 3;
  String composer;
  static const int COMPOSER = 4;
  double duration = 0.0;
  static const int DURATION = 5;
  int pro;
  static const int PRO = 6;


  Track() {
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TITLE:
        return this.title;
      case ARTIST:
        return this.artist;
      case PUBLISHER:
        return this.publisher;
      case COMPOSER:
        return this.composer;
      case DURATION:
        return this.duration;
      case PRO:
        return this.pro;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case TITLE:
        if (value == null) {
          title = null;
        else if (value is String) {
          title = value;
        }

        break;

      case ARTIST:
        if (value == null) {
          artist = null;
        else if (value is String) {
          artist = value;
        }

        break;

      case PUBLISHER:
        if (value == null) {
          publisher = null;
        else if (value is String) {
          publisher = value;
        }

        break;

      case COMPOSER:
        if (value == null) {
          composer = null;
        else if (value is String) {
          composer = value;
        }

        break;

      case DURATION:
        if (value == null) {
          duration = null;
        else if (value is double) {
          duration = value;
        }

        break;

      case PRO:
        if (value == null) {
          pro = null;
        else if (value is int) {
          pro = value;
        }

        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case TITLE:
        return title == null;

      case ARTIST:
        return artist == null;

      case PUBLISHER:
        return publisher == null;

      case COMPOSER:
        return composer == null;

      case DURATION:
        return duration == null;

      case PRO:
        return pro == null;

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
        case TITLE:
          if(field.type == thrift.TType.STRING) {
            title = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ARTIST:
          if(field.type == thrift.TType.STRING) {
            artist = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PUBLISHER:
          if(field.type == thrift.TType.STRING) {
            publisher = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COMPOSER:
          if(field.type == thrift.TType.STRING) {
            composer = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DURATION:
          if(field.type == thrift.TType.DOUBLE) {
            duration = iprot.readDouble();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PRO:
          if(field.type == thrift.TType.I32) {
            pro = iprot.readI32();
            pro = null;
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
    if(this.title != null) {
      oprot.writeFieldBegin(_TITLE_FIELD_DESC);
      oprot.writeString(title);
      oprot.writeFieldEnd();
    }
    if(this.artist != null) {
      oprot.writeFieldBegin(_ARTIST_FIELD_DESC);
      oprot.writeString(artist);
      oprot.writeFieldEnd();
    }
    if(this.publisher != null) {
      oprot.writeFieldBegin(_PUBLISHER_FIELD_DESC);
      oprot.writeString(publisher);
      oprot.writeFieldEnd();
    }
    if(this.composer != null) {
      oprot.writeFieldBegin(_COMPOSER_FIELD_DESC);
      oprot.writeString(composer);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_DURATION_FIELD_DESC);
    oprot.writeDouble(duration);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_PRO_FIELD_DESC);
    oprot.writeI32(pro);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("Track(");

    ret.write("title:");
    if(this.title == null) {
      ret.write("null");
    } else {
      ret.write(this.title);
    }

    ret.write(", ");
    ret.write("artist:");
    if(this.artist == null) {
      ret.write("null");
    } else {
      ret.write(this.artist);
    }

    ret.write(", ");
    ret.write("publisher:");
    if(this.publisher == null) {
      ret.write("null");
    } else {
      ret.write(this.publisher);
    }

    ret.write(", ");
    ret.write("composer:");
    if(this.composer == null) {
      ret.write("null");
    } else {
      ret.write(this.composer);
    }

    ret.write(", ");
    ret.write("duration:");
    ret.write(this.duration);

    ret.write(", ");
    ret.write("pro:");
    String pro_name = t_v1_music.PerfRightsOrg.VALUES_TO_NAMES[this.pro];
    if(pro_name != null) {
      ret.write(pro_name);
      ret.write(" (");
    }
    ret.write(this.pro);
    if(pro_name != null) {
      ret.write(")");
    }

    ret.write(")");

    return ret.toString();
  }

  bool operator ==(Object o) {
    if(o == null || !(o is Track)) {
      return false;
    }
    Track other = o as Track;
    return this.title == other.title
      && this.artist == other.artist
      && this.publisher == other.publisher
      && this.composer == other.composer
      && this.duration == other.duration
      && this.pro == other.pro;
  }

  int get hashCode {
    var value = 17;
    value = (value * 31) ^ title.hashCode;
    value = (value * 31) ^ artist.hashCode;
    value = (value * 31) ^ publisher.hashCode;
    value = (value * 31) ^ composer.hashCode;
    value = (value * 31) ^ duration.hashCode;
    value = (value * 31) ^ pro.hashCode;
    return value;
  }

  Track clone({
    String title: null,
    String artist: null,
    String publisher: null,
    String composer: null,
    double duration: null,
    int pro: null,
  }) {
    return new Track()
      ..title = title ?? this.title
      ..artist = artist ?? this.artist
      ..publisher = publisher ?? this.publisher
      ..composer = composer ?? this.composer
      ..duration = duration ?? this.duration
      ..pro = pro ?? this.pro;
  }

  validate() {
    if(pro != null && !t_v1_music.PerfRightsOrg.VALID_VALUES.contains(pro)) {
      throw new thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, "The field 'pro' has been assigned the invalid value $pro");
    }
  }
}
