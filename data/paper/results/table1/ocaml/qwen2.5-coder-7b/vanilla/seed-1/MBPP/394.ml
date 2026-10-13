let rec check_distinct (test_tup : int list) : bool = 
  let rec check (lst: int list) (seen: int list) : bool = 
    match lst with
    | [] -> true
    | x::xs -> if List.mem x seen then false else check xs (x::seen)
  in check test_tup []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if given list contains no duplicates. *)
