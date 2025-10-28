let rec bubble_pass l =
  match l with
  | [] -> []
  | [x] -> [x]
  | h1::h2::tl ->
      if h1 > h2 then
        h2::(bubble_pass (h1::tl))
      else
        h1::(bubble_pass (h2::tl))

let rec bubble_sort l =
  if List.length l <= 1 then
    l
  else
    let passed_list = bubble_pass l in
    if passed_list = l then
      l
    else
      bubble_sort passed_list

let rec bubble_sort_rec l =
  match l with
  | [] -> []
  | [x] -> [x]
  | _ ->
      let rec one_pass l acc =
        match l with
        | [] -> List.rev acc
        | [x] -> List.rev (x::acc)
        | h1::h2::tl ->
            if h1 > h2 then
              one_pass (h1::tl) (h2::acc)
            else
              one_pass (h2::tl) (h1::acc)
      in
      let passed = one_pass l [] in
      let last_elm = List.hd (List.rev passed) in
      let remaining_l = List.rev (List.tl (List.rev passed)) in
      (bubble_sort_rec remaining_l)@[last_elm]


let rec bubble_sort_final l =
  let rec pass_and_partition lst sorted_tail =
    match lst with
    | [] -> ([], sorted_tail)
    | [x] -> ([x], sorted_tail)
    | h1::h2::tl ->
        if h1 > h2 then
          let (ramaining_list, new_sorted_tail) = pass_and_partition (h1::tl) sorted_tail in
          (h2::ramaining_list, new_sorted_tail)
        else
          let (remaining_list, new_sorted_tail) = pass_and_partition (h2::tl) sorted_tail in
          (h1::remaining_list, new_sorted_tail)
  in
  let rec sort_loop unsorted_list =
    if List.length unsorted_list <= 1 then
      unsorted_list
    else
      let (swapped_list, _) = pass_and_partition unsorted_list [] in
      let rec remove_last_and_get_last l =
        match l with
        | [] -> failwith "Empty list"
        | [x] -> ([], x)
        | h::tl ->
            let (rest, last) = remove_last_and_get_last tl in
            (h::rest, last)
      in
      let (init_list, last_elem) = remove_last_and_get_last swapped_list in
      (sort_loop init_list)@[last_elem]
  in
  sort_loop l
