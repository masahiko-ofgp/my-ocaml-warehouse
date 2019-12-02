(* Normal *)
let rec tarai x y z =
  if x <= y then z
  else tarai (tarai (x - 1) y z) (tarai (y - 1) z x) (tarai (z - 1) x y)


let () =
  let start = Sys.time() in
  let _ = tarai 12 6 0 in
  Printf.printf "time: %f\n" (Sys.time() -. start);;
