let rec sort_array (arr : int list) : int list =
  let compare (x : int) (y : int) : int =
    let x_ones = number_of_ones x in
    let y_ones = number_of_ones y in
    let compare_ones = Int.compare x_ones y_ones in
    if compare_ones <> 0 then
      compare_ones
    else
      Int.compare x y
  in
  List.sort compare arr

and number_of_ones (n : int) : int =
  let rec aux (n : int) (acc : int) : int =
    if n = 0 then
      acc
    else
      let n' = n / 2 in
      let acc' = if n mod 2 = 1 then acc + 1 else acc in
      aux n' acc'
  in
  aux n 0


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
