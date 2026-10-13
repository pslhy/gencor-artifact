let rec is_nonagonal (n : int) : int = 
  let rec helper k count = 
    if count = n then k * (7 * k - 5) / 2 else helper (k + 1) (count + 1) 
  in helper 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
