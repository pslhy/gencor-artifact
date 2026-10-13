let rec check_value (dict : (string * int) list) (n : int) : bool =
  match dict with
  | (_, v)::t when v = n -> check_value t n
  | (_, v)::_ -> false
  | [] -> true

(* example usage: *)
let dict = [("x", 1); ("y", 1); ("z", 1)]
let dict2 = [("x", 1); ("y", 2); ("z", 1)]

(*(1, true) -> True as all values are same in the list*)
# check_value dict 1;;
- : bool = true

(*(1, false) -> False as 2nd value is not same in the list*)
# check_value dict2 1;;
- : bool = false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if all values are same in an association list. *)
