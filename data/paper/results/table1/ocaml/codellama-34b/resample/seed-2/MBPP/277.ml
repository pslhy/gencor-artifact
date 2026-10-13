(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in an association list and integer n and filters the association list to only include entries with values greater than or equal to n. *)
let rec dict_filter (dict : (string * int) list) (n : int) : (string * int) list =
    match dict with
    | [] -> []
    | (key, value) :: rest ->
        if value >= n then
            (key, value) :: dict_filter rest n
        else
            dict_filter rest n

