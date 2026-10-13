(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
let rec bell_Number (n : int) : int = 
  if n = 0 then 1
  else 
    let rec bell_Number-row n j =
      if j = 0 then 1
      else if j > n then 0
      else (bell_Number-row (n - 1) j - bell_Number-row (n - 1) (j - 1))
    in
    let rec sum k =
      if k > n then 0
      else bell_Number-row n k + sum (k + 1)
    in
    sum 0
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:25: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec bell_Number (n : int) : int = 
  if n = 0 then 1
  else 
    let rec bell_Number_row n j =
      if j = 0 then 1
      else if j > n then 0
      else (bell_Number_row (n - 1) j - bell_Number_row (n - 1) (j - 1))
    in
    let rec sum k =
      if k > n then 0
      else bell_Number_row n k + sum (k + 1)
    in
    sum 0

