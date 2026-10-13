let rec sort_array (arr : int list) : int list =
    let rec compare x y =
        let num_ones x =
            let s = string_of_int x in
            let rec count n i =
                if i = String.length s then n else
                if String.get s i = '1' then count (n + 1) (i + 1) else count n (i + 1) in
            count 0 0 in
        let x_num_ones = num_ones x in
        let y_num_ones = num_ones y in
        if x_num_ones = y_num_ones then x - y else x_num_ones - y_num_ones in
    List.stable_sort compare arr


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
