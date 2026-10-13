let rec sum_Of_product (n : int) : int =
    match n with
    | 0 -> 1
    | n -> List.fold_left ( * ) 1 (List.map (fun x -> x + 1) (List.init n (fun x -> x)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
