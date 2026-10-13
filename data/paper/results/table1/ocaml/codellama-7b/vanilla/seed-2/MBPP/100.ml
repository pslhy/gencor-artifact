let rec next_smallest_palindrome (num : int) : int =
  let num_str = string_of_int num in
  let rev_num_str = String.rev num_str in
  let is_palindrome = ref false in
  let result = ref 0 in
  for i = 1 to String.length num_str do
    if !is_palindrome then
      break
    else if String.sub num_str 0 i = String.sub rev_num_str 0 i then
      is_palindrome := true
      result := String.sub num_str 0 i ^ String.sub rev_num_str i to String.length num_str
    else
      break
  done;
  !result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
