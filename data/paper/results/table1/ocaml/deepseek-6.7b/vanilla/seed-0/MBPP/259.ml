let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    match test_tup1, test_tup2 with
    | [], [] -> []
    | h1::t1, h2::t2 -> (List.sort compare (h1@h2)) :: maximize_elements t1 t2
    | _ -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
