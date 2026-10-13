let rec sort_array (arr : int list) : int list =
  List.sort (fun a b ->
    let count_ones a = String.count (string_of_int a) (Char.chr 49) in
    let count_zeros a = String.length (String.filter ((<>) '1') (string_of_int a)) in
    match (count_ones a, count_ones b, count_zeros a, count_zeros b) with
    | (a, _ , _, _) when a = (count_ones b) -> compare a (count_zeros b)
    | (_, _ , a, _) when a = (count_zeros b) -> compare b a
    | _ -> compare a b)
  arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this Kata, you have to sort a list of non-negative integers according to *)
(*     number of ones in their binary representation in ascending order. *)
(*     For similar number of ones, sort based on decimal value. *)
(*     It must be implemented like this: *)
(*     >>> sort_array [1; 5; 2; 3; 4] *)
(*     [1; 2; 3; 4; 5] *)
(*     >>> sort_array [(-2); (-3); (-4); (-5); (-6)] *)
(*     [(-6); (-5); (-4); (-3); (-2)] *)
(*     >>> sort_array [1; 0; 2; 3; 4] *)
(*     [0; 1; 2; 3; 4] *)
