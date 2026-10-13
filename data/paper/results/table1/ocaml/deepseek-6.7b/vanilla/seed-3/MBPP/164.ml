let rec are_equivalent (num1 : int) (num2 : int) : bool =
  let sum_divisors n =
    let rec loop i sum =
      if i = 0 then sum
      else if n mod i = 0 then loop (i - 1) (sum + i)
      else loop (i - 1) sum
    in loop (n / 2) 0
  in sum_divisors num1 = sum_divisors num2

(* Test cases *)
let () =
  assert (are_equivalent 220 284);
  assert (not (are_equivalent 500 548))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
