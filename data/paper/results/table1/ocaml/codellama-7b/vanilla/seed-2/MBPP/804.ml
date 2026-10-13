let rec is_product_even (arr : int list) : bool =
  match arr with
  | [] -> false
  | _ -> List.fold_left (fun acc x -> acc || (x mod 2 = 0)) false arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the product of numbers in a list is even or not. *)
