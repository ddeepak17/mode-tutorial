module dmoney_addr::Sample2 {

  const MY_ADDR: address = @dmoney_addr;

  fun confirm_value(choice: bool): (u64, bool) {
    if (choice) 
      return (1, choice)
    else
      return (0, choice)
  }

/*
  #[test_only]
  use std::debug::print;

  #[test]
  fun test_function() {
    let (number, choice) = confirm_value(true);
    print(&number);
    print(&choice);
  }
  */
}