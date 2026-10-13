let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
  List.sort (fun (_,a) (_,b) -> 
      if a = b then 0 else if a > b then 1 else -1) dict1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
