address dmoney_addr {

  module one {
    public fun get_value(): u64 {
      return 100
    }
  }

  module two {
    #[test_only]
    use std::debug::print;

    #[test]
    fun test_function() {
      let result = dmoney_addr::one::get_value();
      print(&result);
    }
  }

  module three {
     #[test_only]
    use std::debug::print;

    #[test]
    fun test_function() {
      let result = dmoney_addr::one::get_value();
      print(&result);
    }
  

  }

}