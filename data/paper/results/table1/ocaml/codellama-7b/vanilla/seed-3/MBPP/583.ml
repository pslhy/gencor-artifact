let rec catalan_number (num : int) : int =
  if num = 1 then
    1
  else
    let n = catalan_number (num - 1) in
    let p = catalan_number (num - 2) in
    n + p


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
