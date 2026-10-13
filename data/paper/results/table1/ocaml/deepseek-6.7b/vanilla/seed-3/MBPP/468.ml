let rec max_product (arr : int list) : int =
  let rec helper (acc : int list) (cur : int) (maxP : int) : int =
    match acc with
    | [] -> maxP
    | h::t -> if h * cur > maxP then helper t (h * cur) (h * cur) else helper t (h * cur) maxP
  in
  match arr with
  | [] -> 0
  | _ -> List.fold_left (helper []) 1 arr |> max_int


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
