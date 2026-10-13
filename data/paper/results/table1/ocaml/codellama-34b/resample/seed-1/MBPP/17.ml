(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns the perimeter of a square given its side length as input. *)
let rec square_perimeter (a : int) : int =
    let b = [ a * 4 ] in
    (match b with
    | [b] -> b
    | [] -> [])

