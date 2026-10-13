
let rec validate (n : int) : bool =
    if n < 1 then true
    else if n = 1 then validate (n/10)
    else validate (n/10)

let is_valid (n : int) : bool =
    validate n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
