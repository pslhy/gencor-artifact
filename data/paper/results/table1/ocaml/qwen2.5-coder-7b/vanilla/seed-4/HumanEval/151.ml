let rec double_the_difference (lst : float list) : int = 
  List.fold_left (fun acc x -> 
    if x >= 0. && x = truncate x && int_of_float x mod 2 <> 0 then
      acc + (int_of_float x * int_of_float x)
    else
      acc
  ) 0 lst


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of numbers, return the sum of squares of the numbers *)
(*     in the list that are odd. Ignore numbers that are negative or not integers. *)
(*     >>> double_the_difference [1; 3; 2; 0] *)
(*     10 *)
(*     >>> double_the_difference [(-1); (-2); 0] *)
(*     0 *)
(*     >>> double_the_difference [9; (-2)] *)
(*     81 *)
(*     >>> double_the_difference [0] *)
(*     0 *)
(*     If the input list is empty, return 0. *)
