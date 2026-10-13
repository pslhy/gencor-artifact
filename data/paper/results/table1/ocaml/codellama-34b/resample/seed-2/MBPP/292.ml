(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find quotient of two numbers (rounded down to the nearest integer). *)
let rec find (n : int) (m : int) : int =
    if m = 0 then raise (Invalid_argument "Division by zero") else
    let (q, r) = (n / m, n mod m) in
    if r = 0 then q else
    find n (m - r)

