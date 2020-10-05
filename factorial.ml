open Printf

let fact n =
  let rec aux n k = if n = 0 then (k 1)
                    else aux (n - 1) (fun x -> k (n * x))
  in
  aux n (fun x -> x)
;;

let () =
  printf "%d\n" (fact 5);
;;
