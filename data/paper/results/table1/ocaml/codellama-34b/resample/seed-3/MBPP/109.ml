(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
let rec odd_Equivalent (s : string) (n : int) : int =
  if n = 0 then
    if s.[0] = '1' then 1 else 0
  else
    let x = s.[n] in
    let y = s.[n-1] in
    if x = '1' <> y = '1' then
      odd_Equivalent s (n - 1) + 1
    else
      odd_Equivalent s (n - 1)

