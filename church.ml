(** Church Number *)
let zero = fun f -> fun x -> x
let succ = fun n -> fun f -> fun x -> f (n f x)

let to_int = fun n -> n (fun k -> k + 1) 0

(**
   to_int zero
   => (fun n -> n (fun k -> k + 1) 0) (fun f -> fun x -> x)
   => (fun f -> fun x -> x) (fun k -> k + 1) 0
   => 0

   succ zero
   => (fun n -> fun f -> fun x -> f (n f x)) (fun f -> fun x -> x)
   => f ((fun f -> fun x-> x) f x)
   => f x
   --> to_int
   (fun n -> n (fun k -> k + 1) 0) (f x)
   => (f x) (fun k -> k + 1) 0
   => (fun k -> k + 1) 0
   => 1
 *)

(** Church Boolean *)
let true' = fun x -> fun y -> x
let false' = fun x -> fun y -> y

let to_bool = fun church_bool -> church_bool true false

let if' = fun cond -> fun thn -> fun els -> (cond thn) els

(** Logical Op *)
let and' = fun x -> fun y -> (x y) false'
let or' = fun x -> fun y -> (x true') y
let not' = fun x -> fun y -> (x false') true'

(** Church Pair *)
let pair = fun fst -> fun snd -> fun bool' -> (bool' fst) snd
let car = fun p -> p true'
let cdr = fun p -> p false'
