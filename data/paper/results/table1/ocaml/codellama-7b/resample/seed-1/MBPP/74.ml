(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
match patterns with
| [] -> true
| h::t -> List.contains h colors && is_samepatterns (List.filter (fun x -> x <> h) colors) t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "List.contains" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
match patterns with
| [] -> true
| h::t -> List.Mem(h, colors) && is_samepatterns (List.filter (fun x -> x <> h) colors) t

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound constructor "List.Mem" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
match patterns with
| [] -> true
| h::t -> List.mem h colors && is_samepatterns (List.filter (fun x -> x <> h) colors) t

