let rec max_aggregate (stdata :  (string * int) list) :  string * int =
  List.fold_left (fun (name, max) (cur_name, cur_score) -> 
    if cur_score > max then (cur_name, cur_score) else (name, max)) 
    ("", 0) stdata
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
