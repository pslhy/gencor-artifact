let rec bell_Number (n : int) : int =
    match n with
    | 0 -> 1
    | 1 -> 1
    | _ -> bell_Number (n - 1) + bell_Number (n - 2)

let nth_Bell_Number (n : int) : int =
    if n < 0 then
        invalid_argument "n should be non-negative"
    else
        bell_Number n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
