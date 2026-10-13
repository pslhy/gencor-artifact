let rec sort_array (arr : int list) : int list =
  let binary_compare (a : int) (b : int) : int =
    let count_ones (x : int) : int =
      let rec loop (acc : int) (n : int) : int = 
        if n = 0 then acc
        else loop (acc + n mod 2) (n / 2)
      in loop 0 x
    in
    let diff = count_ones a - count_ones b
    in if diff <> 0 then diff
    else a - b
  in List.sort binary_compare arr


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
