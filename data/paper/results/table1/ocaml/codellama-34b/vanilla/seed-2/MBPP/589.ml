let rec perfect_squares (a : int) (b : int) : int list =
    match a with
    | 0 -> [ a ]
    | a when a < b -> a * a :: perfect_squares (a + 1) (b - a)
    | _ -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
