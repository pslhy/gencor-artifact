(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given tuples contain the k or not. *)
let rec check_K (test_tup : int list) (k : int) : bool =
    match test_tup with
    | [] -> false
    | hd :: tl -> (
        match hd with
        | 'k' :: rest -> true
        | _ -> check_K tl k
    )

