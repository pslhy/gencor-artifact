let rec sort_array (arr : int list) : int list = 
  List.sort (fun a b -> 
    let ones_a = List.length (List.filter ((=) 1) (List.map (fun x -> x mod 2) (List.map (fun x -> abs x) [a]))) in
    let ones_b = List.length (List.filter ((=) 1) (List.map (fun x -> x mod 2) (List.map (fun x -> abs x) [b]))) in
    if ones_a = ones_b then compare a b else compare ones_a ones_b) arr


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
