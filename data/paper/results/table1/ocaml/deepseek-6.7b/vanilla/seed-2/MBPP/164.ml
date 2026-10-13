let rec are_equivalent (num1 : int) (num2 : int) : bool =
  let sum_of_divisors num =
    let rec loop i sum =
      if i = 0 then sum
      else if num mod i = 0 then loop (i-1) (sum + i)
      else loop (i-1) sum
    in
    loop num num
  in
  sum_of_divisors num1 = sum_of_divisors num2
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
