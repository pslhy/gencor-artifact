let rec find_Odd_Pair (a : int list) (n : int) : int =
  let rec aux x i cnt =
    if i = n then cnt
    else if (a.[x] lxor a.[i]) mod 2 <> 0 then aux (x + 1) (i + 1) (cnt + 1)
    else aux (x + 1) (i + 1) cnt
  in
  aux 0 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
