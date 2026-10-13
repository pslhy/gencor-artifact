let rec max_sub_array_sum (a : int list) (size : int) : int = 
  let max_so_far = ref Sys.max_int in
  let max_ending_here = ref 0 in
  for i = 0 to size - 1 do
    max_ending_here := !max_ending_here + List.nth a i;
    if !max_so_far < !max_ending_here then max_so_far := !max_ending_here;
    if !max_ending_here < 0 then max_ending_here := 0
  done;
  !max_so_far


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
