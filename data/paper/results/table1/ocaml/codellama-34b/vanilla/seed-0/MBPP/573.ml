let rec unique_product (list_data : int list) : int =
  match list_data with
  | [] -> 1
  | x :: xs ->
      let unique_product_of_xs = unique_product xs in
      if List.mem x xs then
        unique_product_of_xs
      else
        x * unique_product_of_xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
