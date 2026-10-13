let rec sort_array (arr : int list) : int list = 
  let compare_by_ones_and_value a b = 
    let count_ones = fun x -> 
      let rec count acc x = 
        if x = 0 then acc 
        else count (acc + (x land 1)) (x lsr 1) 
      in count 0 (abs x)
    in 
    let ones_diff = compare (count_ones a) (count_ones b) in
    if ones_diff = 0 then compare a b else ones_diff
  in 
  List.sort compare_by_ones_and_value arr


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
