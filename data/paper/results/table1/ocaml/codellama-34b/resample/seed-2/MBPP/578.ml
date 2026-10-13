(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
    match list1, list2, list3 with
    | (x::_, y::_, z::_) -> x :: y :: z :: interleave_lists list1 list2 list3
    | _ -> []

