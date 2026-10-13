let rec next_smallest_palindrome (num : int) : int = 
  let rec is_palindrome (n : int) : bool = 
    let rec reverse_and_compare (x : int) (y : int) : bool = 
      if x = 0 then y = 0 else reverse_and_compare (x / 10) (y * 10 + x mod 10) 
    in n = reverse_and_compare n 0 
  in 
  let next_num = num + 1 in 
  if is_palindrome next_num then next_num else next_smallest_palindrome next_num


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
