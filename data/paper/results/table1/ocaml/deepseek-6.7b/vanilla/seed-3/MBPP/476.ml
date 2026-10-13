let rec big_sum (nums : int list) : int =
  match nums with
  | [] -> invalid_arg "List is empty"
  | [x] -> x * 2
  | _ -> let min_v = List.fold_left min (List.hd nums) nums 
          and max_v = List.fold_left max (List.hd nums) nums in
             min_v + max_v


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
