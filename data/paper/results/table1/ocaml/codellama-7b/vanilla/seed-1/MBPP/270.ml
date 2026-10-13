let rec sum_even_and_even_index (arr : int list) : int =
    match arr with
    | h :: t ->
        if h mod 2 = 0 && List.nth arr (h - 1) mod 2 = 0
        then h + sum_even_and_even_index t
        else sum_even_and_even_index t
    | [] -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
