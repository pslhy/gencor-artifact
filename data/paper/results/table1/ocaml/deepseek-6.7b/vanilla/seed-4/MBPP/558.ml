let rec digit_distance_nums (n1 : int) (n2 : int) : int =
  if n1 > n2 then
    n1 - n2
  else
    n2 - n1

let digit_distance_sum (n1 : int) (n2 : int) : int =
  let n1_str = string_of_int n1
  and n2_str = string_of_int n2 in
  let rec loop i sum =
    if i < String.length n1_str then
      loop (i + 1) (sum + digit_distance_nums (int_of_string (String.make 1 (String.get n1_str i))) (int_of_string (String.make 1 (String.get n2_str i))))
    else
      sum in
  loop 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
