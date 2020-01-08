open Printf

let rec fact_cps n k =
  if n = 0 then (k 1)
  else fact_cps (n - 1) (fun x -> k (n * x))

let fact n =
  fact_cps n (fun x -> x)

let () = printf "%d\n" (fact 5);;
