let rec next_smallest_palindrome (num : int) : int = 
  let is_palindrome (x : int) : bool = 
    let rec helper (n : int) (rev : int) : bool = 
      if n = 0 then rev = x
      else helper (n / 10) (rev * 10 + n mod 10)
    in helper (abs x) 0
  in
  let rec find_next (n : int) : int = 
    if is_palindrome n then n
    else find_next (n - 1)
  in find_next (num - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
