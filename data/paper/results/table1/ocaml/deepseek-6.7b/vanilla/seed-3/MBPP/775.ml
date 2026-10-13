let rec odd_position (nums : int list) : bool =
  match nums with
  | [] -> true
  | _::[] -> false
  | x::(y::z) -> if y mod 2 = 0 then false else odd_position z

let odd_indices_odd_elements num_list =
  let odd_elements = List.filter (fun x -> x mod 2 <> 0) num_list in
  odd_position odd_elements


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
