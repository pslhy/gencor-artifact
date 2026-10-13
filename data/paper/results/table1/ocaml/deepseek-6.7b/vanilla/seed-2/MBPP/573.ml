let rec unique_product (list_data : int list) : int =
  match list_data with
  | [] -> 1
  | head :: tail -> head * (unique_product (List.filter (fun x -> x <> head) tail))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
