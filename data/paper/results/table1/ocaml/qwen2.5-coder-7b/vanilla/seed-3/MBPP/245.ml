let rec max_sum (arr : int list) : int = 
  let n = List.length arr in
  if n = 0 then 0
  else
    let INCREASING = 1 ;;
    let DECREASING = 0 ;;
    let is_increasing a b = a <= b ;;
    let is_decreasing a b = a >= b ;;

    (* Helper function to calculate bitonic sum *)
    let rec bitonic_sum arr pos direction acc =
      if pos < 0 || pos >= n then acc
      else
        let next_pos =
          if direction = INCREASING then pos + 1 else pos - 1
        in
        let next_val = List.nth arr next_pos in
        if (if direction = INCREASING then is_increasing else is_decreasing) acc next_val then
          bitonic_sum arr next_pos direction (max acc next_val)
        else
          acc
    in

    (* Calculate max sum for each starting point *)
    let max_pos_sum =
      List.fold_left
        (fun acc pos ->
           max acc
             (max
                (bitonic_sum arr pos INCREASING 0)
                (bitonic_sum arr pos DECREASING 0)))
        0
        (List.range 0 n)
    in

    max_pos_sum

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
