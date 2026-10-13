let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list = 
    (* base case: lists are empty *)
    match (list1, list2, list3) with
    | ([], [], []) -> []
    (* base case: one or more lists are non-empty *)
    | (h1::t1, h2::t2, h3::t3) -> 
        h1 :: h2 :: h3 :: (interleave_lists t1 t2 t3)
    | _ -> failwith "input lists are not of equal length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
