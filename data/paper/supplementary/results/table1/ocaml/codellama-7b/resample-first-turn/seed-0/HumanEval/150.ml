let rec x_or_y (n : int) (x : int) (y : int) : int =
  if is_prime n then x else y

and is_prime (n : int) : bool =
  if n <= 1 then false else
  let max = int_of_float (ceil (sqrt (float_of_int n))) in
  let rec check i : bool =
    if i > max then true else
    if n mod i = 0 then false else check (i + 1)
  in check 2

(** The size of the largest prime number found when searching 
  from 1 to (largest_prime **) : int =
  largest_prime
(** The largest prime number found when searching 
  from 1 to (largest_prime **) : int =
  let rec find_prime i : int =
    if is_prime i then i else find_prime (i + 1)
  in find_prime 1

let (_ : int) = x_or_y 7 34 12
let (_ : int) = x_or_y 15 8 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     A simple program which should return the value of x if n is *)
(*     a prime number and should return the value of y otherwise. *)
(*     Examples: *)
(*     >>> x_or_y 7 34 12 *)
(*     34 *)
(*     >>> x_or_y 15 8 5 *)
(*     5 *)
