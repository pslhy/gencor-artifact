(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
let rec is_undulating (n : int) : bool =
  if n < 2 then false
  else if n = 2 then true
  else if n % 2 = 0 then is_undulating (n / 2)
  else is_undulating (n / 2 + 1)
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_undulating (n : int) : bool =
  if n < 2 then false
  else if n = 2 then true
  else if n % 2 = 0 then is_undulating (n / 2)
  else is_undulating (n / 2 + 1)
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_undulating (n : int) : bool =
  if n < 2 then false
  else if n = 2 then true
  else if n mod 2 = 0 then is_undulating (n / 2)
  else is_undulating (n / 2 + 1)
;;

