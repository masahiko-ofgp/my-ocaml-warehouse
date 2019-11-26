class animal n =
  object
    val name = n
    method get_name = print_endline name
  end

class dog n =
  object
    inherit animal n
  end

class human n e =
  object
    inherit animal n
    val email = e
    method get_email = print_endline email
  end

let () =
  let tom = new human "Tom" "tom@tom.com" in
  let hachi = new dog "Hachi" in
  tom#get_name;
  tom#get_email;
  hachi#get_name;;
