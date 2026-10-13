
let rec maximum (arr : int list) (k : int) : int list =
  match (arr, k) with
  | [], _ -> []
  | _, 0 -> []
  | [x], _ when x > 0 -> [x]
  | neg_prefix :: pos_rest, _ ->
      if List.mem neg_prefix [pos_rest]
      then if List.mem neg_prefix [pos_rest]
      then max neg_prefix [pos_rest]
      else neg_prefix :: maximum(pos_rest, k)
      else neg_prefix :: maximum(pos_rest, k)
  | _ -> []

let rec max_list (arr : int list) (k : int) : int list =
  match arr with
  | [] -> []
  | h :: t ->
      let res = maximum (h :: t) k in
      if res = [] then max_list t k else res

let rec take (arr : int list) (k : int) : int list =
  match (arr, k) with
  | [], _ -> []
  | _, 0 -> []
  | [x], _ when x > 0 -> [x]
  | neg_prefix :: pos_rest, _ ->
      if List.mem neg_prefix [pos_rest]
      then if List.mem neg_prefix [pos_rest]
      then max neg_prefix [pos_rest]
      else neg_prefix :: take(pos_rest, k)
      else neg_prefix :: take(pos_rest, k)
  | _ -> []

let rec sorted (arr : int list) : int list =
  match arr with
  | [] -> []
  | h :: t ->
      let res = take (h :: t) in
      if res = [] then sorted t else res

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
