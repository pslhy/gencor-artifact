let rec max_length (list1 : int list list) :  int * int list =
  List.fold_left (fun (len, max) list -> if List.length list > len then (List.length list, list) else (len, max)) (0, []) list1
;; 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
