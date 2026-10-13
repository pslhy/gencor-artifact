let rec sum_div (number : int) : int =
  let rec loop (i : int) (sum : int) : int =
    if i = 0 then sum
    else if number mod i = 0 then loop (i - 1) (sum + i)
    else loop (i - 1) sum
  in
  loop (number / 2) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
