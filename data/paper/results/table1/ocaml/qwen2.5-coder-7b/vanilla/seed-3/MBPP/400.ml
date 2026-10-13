let rec extract_freq (test_list :  (int * int) list) : int = 
 let aux acc (x,y) = 
  if List.mem (x,y) acc then acc
  else (x,y) :: acc in
  List.length (List.fold_left aux [] test_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
