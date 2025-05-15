module dmoney_addr::Sample1 {
  use std::debug;
  use std::string::{String, utf8};

  const ID: u64 = 100;

  fun set_value(): u64  {
    let value_id: u64 = 200;
    let string_val: String = utf8(b"dmoney"); 
    let string_byte: vector<u8> = b"This is a byte string";
    debug::print(&value_id);
    debug::print(&string_val);
    debug::print(&utf8(string_byte));
    ID
  }

  //#[test]
  fun test_function() {
    let id_value = set_value();
    debug::print(&id_value);
  }

}