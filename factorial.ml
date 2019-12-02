open Printf

let rec fact_cc n k =
  if n = 0 then (k 1)
  else fact_cc (n - 1) (fun x -> k (n * x))

let fact n =
  fact_cc n (fun x -> x)

let () = printf "%d\n" (fact 5);;
