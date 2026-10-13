
let rec x_or_y (n : int) (x : int) (y : int) : int =
  match n with
  | 2 -> x
  | 3 -> x
  | _ ->
    if n <= 1 then y
    else if n mod 2 = 0 then y
    else
      let rec is_prime_helper (i : int) (max_div : int) : bool =
        i > max_div || (n mod i <> 0 && is_prime_helper (i+2) (n/i)) in
      if n mod 3 = 0 then y
      else if n < 9 then x
      else if is_prime_helper 5 (n/2) then x
      else y

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     A simple program which should return the value of x if n is *)
(*     a prime number and should return the value of y otherwise. *)
(*     Examples: *)
(*     >>> x_or_y 7 34 12 *)
(*     34 *)
(*     >>> x_or_y 15 8 5 *)
(*     5 *)
