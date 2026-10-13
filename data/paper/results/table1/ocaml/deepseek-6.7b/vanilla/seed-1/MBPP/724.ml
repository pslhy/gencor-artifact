let rec power_base_sum (base : int) (power : int) : int =
  match power with
  | 0 -> 1
  | _ ->
      let rec sum_digits n =
        match n with
        | 0 -> 0
        | _ -> n mod 10 + sum_digits (n / 10)
      in
      sum_digits (base ** power)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
