
let rec next_smallest_palindrome (num : int) : int =
  let str = string_of_int num in
  let len = String.length str in
  if str = String.concat "" (List.rev (String.to_seq str)) then
    num
  else
    next_smallest_palindrome (num + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
