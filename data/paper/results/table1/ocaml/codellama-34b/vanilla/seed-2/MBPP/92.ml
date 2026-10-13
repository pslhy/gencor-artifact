let rec is_undulating (n : int) : bool =
    match n with
    | 0 | 1 -> false
    | x when x mod 2 = 0 -> false
    | x when x mod 2 = 1 && is_undulating (x - 2) -> false
    | _ -> true


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
