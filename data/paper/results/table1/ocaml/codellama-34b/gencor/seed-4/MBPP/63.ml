
let rec max_difference (test_list :  (int * int) list) : int = 
    (* base case: if only one pair is available *)
    let (a, b) = 
        match test_list with 
        | [(a, b)] -> (a, b) 
        | _ -> raise (Failure "Invalid input")
    in
    b - a

(* recursive case: more than one pair available *) 
let (a, b) = 
    match (max_difference (List.tl (List.tl (List.hd (List.tl (List.tl (List.hd (List.tl (List.tl (List.hd (List.tl (List.hd (List.tl (List.tl (List.hd (List.tl (List.tl (List.hd (List.tl (List.hd (List.tl (List.tl (List.hd (List.tl (List.hd (List.hd (List.tl (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (List.tl (List.hd (

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
