let rec next_smallest_palindrome (num : int) : int =
  if num mod 10 = 0 && num mod 100 < 10 then
    num + 1
  else if num mod 10 = 0 && num mod 100 >= 10 then
    num + 2
  else
    let str = string_of_int num in
    let rev_str = reverse (String.sub str 1 (String.length str - 1)) in
    if str = rev_str then
      num + 1
    else
      next_smallest_palindrome (num + 1)

and reverse (str : string) : string =
  let len = String.length str in
  let rec reverse_helper (idx : int) : string =
    if idx = len - 1 then
      String.sub str (idx + 1) (len - idx - 1)
    else if idx = len then
      String.sub str 0 (len - 1)
    else
      String.concat "" [reverse_helper (idx + 1); String.make 1 (String.get str idx); reverse_helper (idx + 1)]
  in
  reverse_helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
