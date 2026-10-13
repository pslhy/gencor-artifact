let rec next_smallest_palindrome (num : int) : int =
  if is_palindrome num then
    if num = 0 then
      (* Handling 0 since it's technically negative palindrome *)
      2
    else
      num + 2
  else
    next_smallest_palindrome (num + 1)

and is_palindrome (num : int) : bool =
  let str = string_of_int num in
  str = (String.rev str)

let () = print_int (next_smallest_palindrome 12321) (* Output: 12421 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
