let rec is_woodall (x : int) : bool =
  x = (x || (x lsr 8) || (x lsr 24)) + ((x lsr 4) && (x lsr 20)) + ((x lsr 12) && (x lsr 16))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
