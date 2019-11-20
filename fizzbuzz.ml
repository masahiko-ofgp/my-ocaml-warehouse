(* Create list *)
let rec range s e =
  if s > e then []
  else s :: range (s + 1) e;;

let fizzbuzz n =
  match ((n mod 3), (n mod 5)) with
  | (0, 0) -> "Fizzbuzz"
  | (_, 0) -> "Buzz"
  | (0, _) -> "Fizz"
  | _ -> string_of_int n;;

let () =
  let l = range 0 30 in
  let f elem =
    Printf.printf "%s\n" (fizzbuzz elem) in
    List.iter f l;;
