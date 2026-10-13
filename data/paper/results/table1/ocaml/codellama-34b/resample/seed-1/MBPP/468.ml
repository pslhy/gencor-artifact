(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
let rec max_product (arr : int list) : int =
    let rec aux (acc : int * int) (index : int) : int =
        match arr with
        | [] -> acc
        | x :: xs ->
            if x > acc then aux (x, index) index
            else aux acc (index + 1) in
    aux (0, 0) 0

