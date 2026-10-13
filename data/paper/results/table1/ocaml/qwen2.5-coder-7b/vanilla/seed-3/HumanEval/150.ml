let rec x_or_y (n : int) (x : int) (y : int) : int = 
  let rec is_prime (num : int) : bool = 
    if num <= 1 then false
    else if num <= 3 then true
    else if num mod 2 = 0 || num mod 3 = 0 then false
    else
      let rec check_divisors (i : int) : bool = 
        if i * i > num then true
        else if num mod i = 0 then false
        else check_divisors (i + 6)
      in check_divisors 5
  in if is_prime n then x else y

(* Test cases *)
let () =
  assert (x_or_y 7 34 12 = 34);
  assert (x_or_y 15 8 5 = 5)


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
