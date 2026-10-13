(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list arr of integers and a positive integer k, return a sorted list *)
(*     of length k with the maximum k numbers in arr. *)
(*     Example 1: *)
(*     >>> maximum [(-3); (-4); 5] 3 *)
(*     [(-4); (-3); 5] *)
(*     Example 2: *)
(*     >>> maximum [4; (-4); 4] 2 *)
(*     [4; 4] *)
(*     Example 3: *)
(*     >>> maximum [(-3); 2; 1; 2; (-1); (-2); 1] 1 *)
(*     [2] *)
(*     Note: *)
(*     1. The length of the list will be in the range of [1, 1000]. *)
(*     2. The elements in the list will be in the range of [-1000, 1000]. *)
(*     3. 0 <= k <= len(arr) *)
let rec maximum (arr : int list) (k : int) : int list =
  List.sort_unstable ~compare:(-) (List.rev (List.take (List.sort_unstable arr) k))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:3: Unbound value "List.sort_unstable" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec maximum (arr : int list) (k : int) : int list =
  List.sort_unstable ~compare:(-) (List.rev (List.take (List.sort_unstable arr) k))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:3: Unbound value "List.sort_unstable" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec maximum (arr : int list) (k : int) : int list =
  let arr = List.sort arr ~compare:(-) in
  let result = List.rev (List.take arr k) in
  List.sort result ~compare:(-)

