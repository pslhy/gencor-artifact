let rec max_difference (test_list :  (int * int) list) : int = 
    let rec calculate_diffs lst current_min current_max diffs =
        match lst with
        | [] -> List.fold_left max 0 diffs
        | (x, y) :: rest ->
            let new_diff_x = abs (x - current_min) in
            let new_diff_y = abs (y - current_max) in
            let new_diffs = List.append diffs [new_diff_x; new_diff_y] in
            calculate_diffs rest (min x current_min) (max y current_max) new_diffs
    in
    match test_list with
    | [] -> 0
    | (x, y) :: rest ->
        let initial_min = min x y in
        let initial_max = max x y in
        calculate_diffs rest initial_min initial_max [abs (x - y)]

(* Example usage:
   let test_list = [(1, 4); (2, 6); (3, 8)] in
   max_difference test_list;;
   (* Output should be the maximum difference between available pairs *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
