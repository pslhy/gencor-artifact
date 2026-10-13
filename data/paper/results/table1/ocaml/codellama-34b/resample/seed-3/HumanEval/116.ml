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
    let compare_ones (a : int) (b : int) : bool =
        let rec count_ones (n : int) : int =
            if n = 0 then
                0
            else if n mod 2 = 0 then
                1 + count_ones (n / 10)
            else
                count_ones (n / 10)
        in
        let count_a = count_ones a in
        let count_b = count_ones b in
        if count_a < count_b then
            true
        else if count_a = count_b then
            a < b
        else
            false
    in
    List.sort compare_ones arr

