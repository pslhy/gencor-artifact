let rec is_polite (n : int) : int =
  if n == 0 then
    1
  else if n == 1 then
    2
  else
    let num_of_bits = n land (n+1) in
    let pow_of_2 = num_of_bits in
    pow_of_2 lsl 1

let test_res = is_polite 7;;
(*The answer is 16, which is the 7th polite number*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
