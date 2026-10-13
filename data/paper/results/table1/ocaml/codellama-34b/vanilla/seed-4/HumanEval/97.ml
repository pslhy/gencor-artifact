let rec multiply (a : int) (b : int) : int = 
    let (a unit, a quo) = (a mod 10, a / 10) in
    let (b unit, b quo) = (b mod 10, b / 10) in
    if a quo = 0 && b quo = 0
    then a unit * b unit
    else multiply a quo b quo * 10 + a unit * b unit


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
