let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 1
  | h :: [] -> h
  | h :: t ->
    let subseq_products =
      List.fold_left
        (fun acc curr ->
           if List.length acc > 0 && List.hd acc > h then
             List.tl acc
           else
             curr :: acc)
        []
        t
    in
    let max_subseq_product = List.fold_left ( * ) h subseq_products in
    if max_subseq_product > h then
      max_subseq_product
    else
      h
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
