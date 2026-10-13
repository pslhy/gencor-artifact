
let rec next_smallest_palindrome (num : int) : int =
  let num_str = string_of_int num in
  let rev_num_str = String.init (String.length num_str) (fun i -> num_str.[String.length num_str - i - 1]) in
  if rev_num_str = num_str then num + 1
  else if num_str = rev_num_str then num
  else next_smallest_palindrome (num + 1)
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
