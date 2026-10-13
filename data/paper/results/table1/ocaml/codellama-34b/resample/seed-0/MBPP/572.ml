(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
let rec two_unique_nums (nums : int list) : int list =
    match nums with
    | [] -> []
    | x :: xs -> 
        if (List.mem x xs)
        then two_unique_nums xs
        else x :: (two_unique_nums xs)

