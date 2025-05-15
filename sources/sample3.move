address dmoney_addr {

  module one {
    friend dmoney_addr::two;
    friend dmoney_addr::three;

    public(friend) fun get_value(): u64 {
      return 100
    }

    #[view]
    public fun get_prices(): u64 {
      ...
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