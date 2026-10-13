
let rec next_smallest_palindrome (num : int) : int =
  if num <= 0 then
    11
  else if List.exists (fun x -> x >= num) (List.rev (String.to_seq (string_of_int num))) then
    num + 1
  else
    next_smallest_palindrome (num + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
