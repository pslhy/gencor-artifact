let rec centered_hexagonal_number (n : int) : int =
    match n with
    | 1 -> 1
    | n when n > 1 -> centered_hexagonal_number (n - 1) * 3 + 1
    | _ -> -1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
