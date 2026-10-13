let rec maximum (arr : int list) (k : int) : int list =
  if k = 0 then
    []
  else if List.length arr = 0 then
    []
  else
    let rec maximum' (arr : int list) (k : int) (acc : int list) : int list =
      match arr with
      | [] -> acc
      | x :: xs ->
        if List.length acc < k then
          maximum' xs k (x :: acc)
        else if x >= List.hd (List.rev acc) then
          maximum' xs k (x :: List.tl (List.rev acc))
        else
          maximum' xs k (List.tl (List.rev acc))
    in
    List.rev (maximum' arr k [])


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
