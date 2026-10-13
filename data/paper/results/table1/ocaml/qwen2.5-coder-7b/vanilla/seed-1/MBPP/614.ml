let rec cummulative_sum (test_list : int list list) : int = 
  List.fold_left (fun acc inner_list -> acc + List.fold_left (fun acc x -> acc + x) 0 inner_list) 0 test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the cumulative sum of all the values that are present in the given list of lists. *)
