let rec check_min_heap (arr : int list) : bool =
  match arr with
  | [] | [_] -> true
  | h :: t ->
    let (l, r) = split_list arr in
    if h > List.hd l || h > List.hd r then
      false
    else
      check_min_heap l && check_min_heap r

and split_list (arr : int list) : int list * int list =
  match arr with
  | [] -> ([], [])
  | h :: t ->
    let (l, r) = split_list t in
    (h :: l, r)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
