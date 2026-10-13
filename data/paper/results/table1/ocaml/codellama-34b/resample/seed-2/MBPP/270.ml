(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
let rec sum_even_and_even_index (arr : int list) : int =
    match arr with
    | [] -> 0
    | (x::_, odd) when odd = 0 -> x + sum_even_and_even_index (List.sub arr 2 (List.length arr - 2))
    | (_, odd) when odd = 1 -> sum_even_and_even_index (List.sub arr 2 (List.length arr - 1))
    | _, _ -> 0

