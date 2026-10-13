let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
    match (list1, list2, list3) with
    | (hd1 :: tl1, hd2 :: tl2, hd3 :: tl3) -> hd1 :: hd2 :: hd3 :: interleave_lists tl1 tl2 tl3
    | _ -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
