let rec filter_oddnumbers (nums : int list) : int list = 
  match nums with 
  | [] -> []
  | h::t -> if h mod 2 <> 0 then h :: filter_oddnumbers t else filter_oddnumbers t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
