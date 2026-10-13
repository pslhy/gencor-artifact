(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
let rec odd_position (nums : int list) : bool =
    match nums with
    | [] -> true
    | x :: xs ->
        if x mod 2 = 1 then odd_position xs
        else false

