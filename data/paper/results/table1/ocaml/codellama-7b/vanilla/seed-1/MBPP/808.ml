let rec check_K (test_tup : int list) (k : int) : bool =
    let rec aux (tup : int list) (k : int) : bool =
        match tup with
        | [] -> false
        | x :: xs -> x = k || aux xs k
    in
    aux test_tup k
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given tuples contain the k or not. *)
