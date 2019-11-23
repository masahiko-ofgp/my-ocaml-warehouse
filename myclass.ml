open Printf;;

(* Class *)
class person (name: string) (email: string) =
  object
    val mutable name = name
    val mutable email = email
    method get_name = name
    method get_email = email
  end;;

(* Immidiate object *)
let dog (name: string) =
  object
    val mutable name = name
    method get_name = name
  end;;


let () =
  let tom = new person "Tom" "tom@tom.com" in
  let hachi = dog "Hachi" in
  printf "\n";
  printf "%s: %s\n" tom#get_name tom#get_email;
  printf "%s\n" hachi#get_name;;
