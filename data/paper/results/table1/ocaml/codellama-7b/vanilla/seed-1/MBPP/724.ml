let rec power_base_sum (base : int) (power : int) : int =
  let rec aux (acc : int) (exp : int) (base : int) : int =
    if exp = 0 then
      acc
    else
      let new_acc = (acc + base) mod 10 in
      aux (new_acc + new_acc) (exp - 1) (base * base)
  in
  aux 0 power base


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
