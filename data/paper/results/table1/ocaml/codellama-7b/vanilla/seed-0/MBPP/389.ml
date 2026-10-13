let rec find_lucas (n : int) : int =
  if n = 2 then 1 else
  let a = find_lucas (n - 1) in
  let b = find_lucas (n - 2) in
  a + b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th lucas number. *)
