let rec cal_sum (n : int) : int = 
  let rec cal_value (n : int) : int = 
      match n with
      | 0 -> 3
      | 1 -> 0
      | 2 -> 2
      | _ -> cal_value (n-2) + cal_value (n-3)
  in  
  let rec sum (n : int) : int =
      if n < 0 then 0
      else cal_value n + sum (n-1)
  in
  sum n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
