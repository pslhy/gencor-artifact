(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
let rec newman_prime (n : int) : int =
  if n = 1 then
    1
  else if n mod 2 = 0 then
    let p = newman_prime (n / 2) in
    if p = 0 then
      n
    else
      0
  else
    let p = newman_prime (n - 1) in
    if p = 0 then
      n
    else
      0
  ]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec newman_prime (n : int) : int =
  if n = 1 then
    1
  else if n mod 2 = 0 then
    let p = newman_prime (n / 2) in
    if p = 0 then
      n
    else
      0

