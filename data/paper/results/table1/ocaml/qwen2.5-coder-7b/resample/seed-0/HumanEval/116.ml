(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec sort_array (arr : int list) : int list = 
  let binary_sort x y = 
    let ones_x = List.length (List.filter ((=) 1) (List.map (fun b -> if b then 1 else 0) (Int.to_list (abs x)))) in
    let ones_y = List.length (List.filter ((=) 1) (List.map (fun b -> if b then 1 else 0) (Int.to_list (abs y)))) in
    if ones_x = ones_y then compare x y else ones_x - ones_y in
  List.sort binary_sort arr

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:92: Unbound value "Int.to_list" *)
(*     Hint: Did you mean "to_float"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list = 
  let binary_sort x y = 
    let rec count_ones num = 
      if num = 0 then 0 else if num land 1 = 1 then 1 + count_ones (num lsr 1) else count_ones (num lsr 1) in
    let ones_x = count_ones (abs x) in
    let ones_y = count_ones (abs y) in
    if ones_x = ones_y then compare x y else ones_x - ones_y in
  List.sort binary_sort arr

