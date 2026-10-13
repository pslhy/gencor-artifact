let rec is_woodall (x : int) : bool =
    match x with
    | 0 -> false
    | 1 -> true
    | _ -> x mod 2 = 0 && is_woodall(x / 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
