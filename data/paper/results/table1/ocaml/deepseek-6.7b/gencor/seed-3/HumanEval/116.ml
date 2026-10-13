
let rec sort_array (arr : int list) : int list =
  List.sort (fun a b ->
    let count_ones a = String.length (String.concat "" (List.map String.make (Array.to_list (String.to_seq (string_of_int a))))) in
    let one_count_a = count_ones a in
    let one_count_b = count_ones b in
    if one_count_a = one_count_b then a - b
    else one_count_a - one_count_b
  ) arr

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
