let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t ->
    let sorted_arr = List.sort compare arr in
    let rec helper (arr : int list) (product : int) : int =
      match arr with
      | [] -> product
      | h :: t ->
        let product' = h * product in
        let product'' =
          if product' > product then product' else product
        in
        helper t product''
    in
    helper sorted_arr 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
