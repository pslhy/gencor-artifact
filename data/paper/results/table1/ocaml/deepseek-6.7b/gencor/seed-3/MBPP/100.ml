
let rec next_smallest_palindrome (num : int) : int =
  let rec is_palindrome num =
    let str = string_of_int num in
    str = String.concat "" (List.rev (String.split_on_char ' ' (String.lowercase_ascii str))) in
  if is_palindrome num then next_smallest_palindrome (num + 1) else num

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
