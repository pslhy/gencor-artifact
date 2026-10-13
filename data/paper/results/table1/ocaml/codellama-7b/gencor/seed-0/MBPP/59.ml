
let rec is_octagonal (n : int) : int =
  if n = 1 then 1
  else if n = 2 then 3
  else if n = 3 then 5
  else
    let n = n - 2 in
    let m = is_octagonal (n / 2) in
    if n mod 2 = 0 then 4 * m * m + 4 * m
    else 4 * m * m + 2 * m + 1

(** The parameters of the function are:
    - n: the number for which we want to find the nth octagonal number
**)

let octagonal_number (n : int) : int =
  is_octagonal (n + 2)

(** Returns the nth octagonal number *)

let _test_octagonal =
  assert (octagonal_number 3 = 5)
  ;
  assert (octagonal_number 4 = 9)
  ;
  assert (octagonal_number 5 = 13)
  ;
  assert (octagonal_number 6 = 17)
  ;
  assert (octagonal_number 7 = 21)
  ;
  assert (octagonal_number 8 = 25)
  ;
  assert (octagonal_number 9 = 29)

(** Tests the function with some example values *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
