(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth hexagonal number. *)
let rec hexagonal_num (n : int) : int = 
    if n = 1 then
        0
    else if n = 2 then
        1
    else
        let rec go xs n =
            if n = 0 then
                xs
            else
                go (n :: xs) (n - 1)
        in
        let xs = go [] 10 in
        let rec sum xs =
            match xs with
            | [] -> 0
            | x :: xs -> x + sum xs
        in
        sum xs

