(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec pluck (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let rec find_smallest_even (arr : int list) (smallest : int * int) : int * int =
      match arr with
      | [] -> smallest
      | x :: xs ->
        let is_even = x mod 2 = 0 in
        if is_even && (x < smallest_even || smallest = ()) then (x, 0) else find_smallest_even xs (smallest, 0)
    in
    let (smallest_even, index) = find_smallest_even arr (max_int, -1) in
    match index with
    | -1 -> []
    | _ -> [smallest_even; index]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:28: Unbound value "smallest_even" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pluck (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let rec find_smallest_even (arr : int list) (smallest : int * int) : int * int =
      match arr with
      | [] -> smallest
      | x :: xs ->
        let is_even = x mod 2 = 0 in
        let smallest' = if is_even && x < smallest_even then (x, 0) else smallest in
        find_smallest_even xs smallest'
    in
    let (smallest_even, index) = find_smallest_even arr (max_int, -1) in
    match index with
    | -1 -> []
    | _ -> [smallest_even; index]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:43: Unbound value "smallest_even" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pluck (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let rec find_smallest_even (arr : int list) (smallest : int * int) =
      match arr with
      | [] -> smallest
      | x :: xs ->
        let is_even = x mod 2 = 0 in
        let smallest' = if is_even && x < smallest then (x, 0) else smallest in
        find_smallest_even xs smallest'
    in
    let (smallest_even, index) = find_smallest_even arr (max_int, -1) in
    match index with
    | -1 -> []
    | _ -> [smallest_even; index]

