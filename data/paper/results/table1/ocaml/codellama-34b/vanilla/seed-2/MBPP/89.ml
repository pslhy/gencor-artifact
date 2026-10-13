let rec closest_num (n : int) : int =
    match n with
    | 0 -> 0
    | n when n > 0 -> n - 1
    | n when n < 0 -> n + 1
    | _ -> invalid_arg "closest_num"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
