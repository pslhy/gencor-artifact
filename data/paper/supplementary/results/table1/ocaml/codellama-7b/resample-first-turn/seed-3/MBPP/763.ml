let rec find_min_diff (arr : int list) (n : int) : int =
  if n = 1 then
    failwith "List has only one element, unable to find minimum difference"
  else
    let rec helper (arr : int list) (min_diff : int) (min_idx : int) (max_idx : int) =
      match arr with
      | h :: [] ->
        if min_idx = max_idx then
          min_diff
        else
          let new_min_diff = min h (abs (h - arr.(min_idx))) in
          helper (List.tl arr) new_min_diff min_idx max_idx
      | h :: t ->
        if h < min_diff then
          helper t h (n - 1) (min n_idx)
        else if h > min_diff then
          helper t min_diff min_idx ((min_idx + 1) mod n)
        else
          helper t min_diff (min_idx + 1) (mod n)
    in
    helper arr Int.max_value 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
