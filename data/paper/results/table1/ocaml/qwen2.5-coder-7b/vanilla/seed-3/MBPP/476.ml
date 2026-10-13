let rec big_sum (nums : int list) : int = match nums with
    [] -> invalid_arg "The list is empty"
  | x :: xs -> let (min_val, max_val) = List.fold_left (fun (a, b) n -> (min a n, max b n)) (x, x) xs in
               min_val + max_val


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
