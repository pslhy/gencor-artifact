let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    let rec aux tup1 tup2 acc =
        match tup1, tup2 with
        | [], _ -> List.rev acc
        | _, [] -> List.rev acc
        | h1::t1, h2::t2 -> aux t1 t2 (List.map (fun x -> x * h2) h1) :: acc
    in
    aux test_tup1 test_tup2 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
