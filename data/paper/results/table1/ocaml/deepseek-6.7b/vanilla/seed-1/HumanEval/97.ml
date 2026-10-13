let rec multiply (a : int) (b : int) : int =
    match (a, b) with
    | (_, 0) -> 0
    | (a, b) when b < 0 -> -((multiply a (-b)))
    | (a, b) -> match a with
        | 0 -> 0 
        | _ -> (b mod 10) + (multiply a (b / 10)) * 10;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Complete the function that takes two integers and returns *)
(*     the product of their unit digits. *)
(*     Assume the input is always valid. *)
(*     Examples: *)
(*     >>> multiply 148 412 *)
(*     16 *)
(*     >>> multiply 19 28 *)
(*     72 *)
(*     >>> multiply 2020 1851 *)
(*     0 *)
(*     >>> multiply 14 (-15) *)
(*     20 *)
