
let rec move_zero (num_list : int list) : int list = 
  let rec helper acc nums = 
    match nums with
    | [] -> List.rev acc
    | 0 :: tail -> helper acc tail
    | x :: tail -> helper (x :: acc) tail
  in
  let zero_count = List.length (List.filter ((=) 0) num_list) in
  let non_zero_list = helper [] num_list in
  non_zero_list @ List.init zero_count (fun _ -> 0)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
