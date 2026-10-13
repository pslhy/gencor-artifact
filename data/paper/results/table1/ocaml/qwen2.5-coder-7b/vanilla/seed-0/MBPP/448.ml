let rec cal_sum (n : int) : int = 
  let rec perrin (y1, y2, y0, c, count) = 
    if count = 0 then y1 + y2 + y0
    else perrin (y2, y0, (2 * y0 + y2) mod 1000, c + 1, count - 1)
  in 
  perrin (3, 0, 2, 0, n)

let sum_of_perrin up_to = cal_sum up_to


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
