let rec remove_odd (l : int list) : int list = 
  match l with
  | [] -> []
  | h :: t -> if h mod 2 = 0 then h :: remove_odd t else remove_odd t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove odd numbers from a given list. *)
