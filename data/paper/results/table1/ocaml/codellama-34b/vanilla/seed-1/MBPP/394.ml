let rec check_distinct (test_tup : int list) : bool =
    let rec aux (acc : int list) (cur : int) : bool =
        match acc with
        | [] -> true
        | h :: t -> if h = cur then false else aux t cur
    in
    match test_tup with
    | [] -> true
    | h :: t -> aux t h


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if given list contains no duplicates. *)
