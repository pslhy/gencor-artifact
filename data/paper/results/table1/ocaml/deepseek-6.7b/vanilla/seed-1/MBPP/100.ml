let rec next_smallest_palindrome (num : int) : int =
  if is_palindrome num then
    if num = 0 then 1 else next_smallest_palindrome (num - 1)
  else
    num

and is_palindrome (num : int) : bool =
  let str = string_of_int num in
  let len = String.length str in
  let rec check i =
    if i < len / 2 then
      str.[i] = str.[len - i - 1] && check (i + 1)
    else
      true
  in
  check 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
