(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
let rec is_sublist (l : int list) (s : int list) : bool =
  if l = [] then false
  else
    (if List.sub l 0 (List.length s) = s then true
    else is_sublist (List.tl l) s)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_sublist (l : int list) (s : int list) : bool =
  if l = [] then false
  else
    (if List.hd l = List.hd s then true
    else is_sublist (List.tl l) s)

