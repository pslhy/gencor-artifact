let rec find_Odd_Pair (a : int list) (n : int) : int =
  let rec loop i j cnt =
    if j < n then
      if (a.((i) lxor (j)) mod 2 = 1 ) then loop i (j+1) (cnt+1)
      else loop i (j+1) cnt
    else if i < n-1 then loop (i+1) (i+2) cnt
    else cnt in
  loop 0 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
