let rec checks (n : int) : bool =
  let rec rev x acc = if x = 0 then acc else rev (x/10) ((x mod 10) + acc * 10) in
  let r = rev n 0 in
  n = 2 * r + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
