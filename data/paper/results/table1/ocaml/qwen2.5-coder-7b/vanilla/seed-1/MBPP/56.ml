let rec checks (n : int) : bool = 
  let rec reverse (num: int) (acc: int) : int = 
    if num = 0 then acc 
    else reverse (num / 10) ((acc * 10) + (num mod 10)) 
  in 
  (n = (2 * (reverse n 0)) - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
