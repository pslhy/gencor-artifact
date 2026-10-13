(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
let rec is_woodall (x : int) : bool = 
    (* base case: 
      If the input value is negative, returns false
      If the input value is 0, returns true
      If the input value is 2, returns true
      If the input value is an odd number, returns true
      Else, returns the result of the function applied to the division of the input value by 2
     *)
    if x < 0 then false
    else if x = 0 then true
    else if x = 2 then true
    else if x mod 2 = 1 then true
    else is_woodall (x / 2)

