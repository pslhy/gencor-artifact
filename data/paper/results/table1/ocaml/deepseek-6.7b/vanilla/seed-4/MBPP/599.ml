let rec sum_average (number : int) :  int * float =
  let rec aux x sum avg =
    if x > number then
      (sum, avg)
    else
      let avg' = (avg +. float x) in
      let sum' = sum + x in
      aux (x + 1) sum' (avg')
  in
  aux 1 0 0.0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
