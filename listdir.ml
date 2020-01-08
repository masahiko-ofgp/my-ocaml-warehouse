(*
 * If you use this in current working directory,
 *     * dirs ".";;
 * else
 *     * Sys.chdir "path/to/dir";;
 *     * dirs ".";;
 * *)

open Printf

let print_dir_list d =
  if Sys.is_directory d then printf "\x1b[36m%s\x1b[0m\n" d
  else printf "%s\n" d

let dirs path = 
  let d = Sys.readdir(path) in
  let l = Array.to_list d in
  List.iter print_dir_list l
;;
