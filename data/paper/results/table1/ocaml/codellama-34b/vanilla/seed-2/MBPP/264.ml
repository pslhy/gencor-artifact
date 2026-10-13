let rec dog_age (h_age : int) : int =
    match h_age with
    | 1 -> 15
    | 2 -> 24
    | _ -> dog_age (h_age - 1) + 3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate a dog's age in dog's years. *)
