let rec merge left right =
  match left, right with
  | [], l -> l
  | l, [] -> l
  | h1::t1, h2::t2 ->
      if h1 < h2 then
        h1::(merge t1 right)
      else
        h2::(merge left t2)

let rec split_list list =
  match list with
  | [] -> ([], [])
  | [x] -> ([x], [])
  | h1::h2::t ->
      let (rest1, rest2) = split_list t in
      (h1::rest1, h2::rest2)

let rec mergesort list =
  let len = List.length list in
  if len <= 1 then
    list
  else
    let (left, right) = split_list list in
    merge (mergesort left) (mergesort right)
