let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec kadane_with_wrap (a : int list) (n : int) (start : int) (max_so_far : int) (current_max : int) : int =
    if start >= n * k then
      max_so_far
    else
      let current_element = a.(start mod n) in
      let new_current_max = max current_element (current_max + current_element) in
      let new_max_so_far = max max_so_far new_current_max in
      kadane_with_wrap a n (start + 1) new_max_so_far new_current_max
  in
  kadane_with_wrap (Array.of_list a) (List.length a) 0 Int.min_int 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
