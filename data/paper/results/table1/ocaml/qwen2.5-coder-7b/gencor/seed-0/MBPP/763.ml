
let rec find_min_diff (arr : int list) (n : int) : int = 
  if n <= 1 then Sys.max_floatarray_length arr
  else
    let rec helper (arr : int list) (min_diff : int) (prev : int) : int =
      match arr with
      | [] -> min_diff
      | current :: rest ->
          let new_diff = abs (current - prev) in
          if new_diff < min_diff then helper rest new_diff current
          else helper rest min_diff current
    in
    let sorted_arr = List.sort compare arr in
    helper (List.tl sorted_arr) Sys.max_floatarray_length sorted_arr.[0]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
