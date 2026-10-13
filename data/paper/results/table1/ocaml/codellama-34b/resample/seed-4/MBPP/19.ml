(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
let rec test_duplicate (arraynums : int list) : bool = 
    (* Check if the list has any duplicate elements *)
    let rec helper (arraynums : int list) : bool = 
        (* Remove the first element and check if it's in the rest of the list *)
        match arraynums with
        | [] -> true
        | head :: tail -> if List.mem head tail then false else helper tail
    in
    arraynums = [] || helper arraynums

