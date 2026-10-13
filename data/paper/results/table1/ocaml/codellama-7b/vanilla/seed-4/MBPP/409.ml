let rec min_product_tuple (list1 :  (int * int) list) : int = 
    match list1 with 
      head :: tail -> 
      (match tail with 
          [] -> head 
        | head2 :: tail2 -> if head2 < head then head else min_product_tuple list1 tail2)
      ;
| _ -> raise Not_found

let min_product = List.map min_product_tuple list2 |> List.fold_left (fun a b -> if a > b then b else a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
