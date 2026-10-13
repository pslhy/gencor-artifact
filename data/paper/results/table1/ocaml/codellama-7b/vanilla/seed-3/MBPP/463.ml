let rec max_subarray_product (arr : int list) : int =
  if List.length arr <= 1 then
    raise (Invalid_argument "List must have more than one element")
  else
    let rec aux (arr : int list) (acc : int) (acc_pro : int list) : int =
      match arr with
      | h :: t ->
        let curr_product = h * acc in
        let next_product = aux t h (h :: acc_pro) in
        max curr_product next_product
      | [] -> List.fold_left ( * ) 1 acc_pro
    in
    aux arr 1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
