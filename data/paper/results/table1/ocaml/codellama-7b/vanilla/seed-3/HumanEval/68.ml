let rec pluck (arr : int list) : int list =
  if List.length arr = 0 then
    []
  else if List.hd arr mod 2 = 0 then
    [List.hd arr; List.length arr]
  else
    let min_even_val = ref max_int in
    let min_even_idx = ref 0 in
    let rec aux (arr : int list) (min_even_val : int) (min_even_idx : int) =
      match arr with
      | [] ->
          []
      | hd :: tl ->
          if hd mod 2 = 0 && hd < min_even_val then
            aux tl hd (List.length arr - 1)
          else if hd mod 2 = 0 && hd = min_even_val then
            if List.length arr - 1 < min_even_idx then
              aux tl hd (List.length arr - 1)
            else
              [hd; List.length arr - 1]
          else
            aux tl min_even_val min_even_idx
    in
    aux arr !min_even_val !min_even_idx
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     "Given a list representing a branch of a tree that has non-negative integer nodes *)
(*     your task is to pluck one of the nodes and return it. *)
(*     The plucked node should be the node with the smallest even value. *)
(*     If multiple nodes with the same smallest even value are found return the node that has smallest index. *)
(*     The plucked node should be returned in a list, [ smalest_value, its index ], *)
(*     If there are no even values or the given list is empty, return []. *)
(*     Example 1: *)
(*     >>> pluck [4; 2; 3] *)
(*     [2; 1] *)
(*     Explanation: 2 has the smallest even value, and 2 has the smallest index. *)
(*     Example 2: *)
(*     >>> pluck [1; 2; 3] *)
(*     [2; 1] *)
(*     Explanation: 2 has the smallest even value, and 2 has the smallest index. *)
(*     Example 3: *)
(*     >>> pluck [] *)
(*     [] *)
(*     Example 4: *)
(*     >>> pluck [5; 0; 3; 0; 4; 2] *)
(*     [0; 1] *)
(*     Explanation: 0 is the smallest value, but  there are two zeros, *)
(*     so we will choose the first zero, which has the smallest index. *)
(*     Constraints: *)
(*     * 1 <= nodes.length <= 10000 *)
(*     * 0 <= node.value *)
