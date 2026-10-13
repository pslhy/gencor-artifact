let rec move_zero (num_list : int list) : int list = 
  let non_zeros, zeros = List.fold_left (fun (acc_non, acc_zero) x -> 
    if x = 0 then (acc_non, x::acc_zero) else (x::acc_non, acc_zero)) ([], []) num_list in
  non_zeros @ List.rev zeros


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
