let rec next_smallest_palindrome (num : int) : int = 
  let rec is_palindrome (n : int) : bool = 
    let rec reverse (acc : int) (n : int) : int =
      if n = 0 then acc else reverse (acc * 10 + n mod 10) (n / 10)
    in
    n = reverse 0 n
  in
  if is_palindrome num then num else next_smallest_palindrome (num + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
