let rec solve (n : int) : string =
  if n = 0 then "0"
  else let (q, r) = (n / 2, n mod 2) in
    (solve q) ^ (string_of_int r)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer N, return the total sum of its digits in binary. *)
(*     Example *)
(*     >>> solve 1000 *)
(*     "1" *)
(*     >>> solve 150 *)
(*     "110" *)
(*     >>> solve 147 *)
(*     "1100" *)
(*     Variables: *)
(*     @N integer *)
(*     Constraints: 0 ≤ N ≤ 10000. *)
(*     Output: *)
(*     a string of binary number *)
