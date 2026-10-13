let rec multiply (a : int) (b : int) : int =
    let unit a = a mod 10 in
    let rest a = a / 10 in
    let rec inner a b : int =
        if a = 0 && b = 0 then 0
        else if a = 0 then unit b
        else if b = 0 then unit a
        else inner rest a b + unit a * unit b
    in
    inner a b


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
