let rec neg_nos (list1 : int list) : int list =
  match list1 with
  | [] -> []
  | h :: t -> if h < 0 then h :: neg_nos t
                else neg_nos t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to return the negative numbers in a list. *)
