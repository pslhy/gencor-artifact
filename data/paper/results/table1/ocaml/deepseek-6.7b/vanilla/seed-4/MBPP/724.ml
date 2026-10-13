let rec power_base_sum (base : int) (power : int) : int =
  let rec aux x acc =
    if x = 0 then acc
    else aux (x / 10) (acc + (x mod 10))
  in
  if power = 0 then 1
  else
    let rec pow x acc =
      if x = 0 then acc
      else pow (x - 1) (acc * base)
    in
    let result = pow power base in
    aux result 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
