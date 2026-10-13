
let rec max_sub_array_sum (a : int list) (size : int) : int = 
  let max_so_far = ref Sys.max_floatarray_length a
      in
  let rec max_ending_here a start end_of_array so_far max_so_far = 
    if start > end_of_array then !max_so_far
    else 
      let max_ending_here = max 0 (max_ending_here + List.nth a start) in
      let max_so_far = max max_so_far max_ending_here in
      max_ending_here a (start + 1) end_of_array so_far max_so_far
  in
  max_ending_here a 0 (size - 1) 0 !max_so_far



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
