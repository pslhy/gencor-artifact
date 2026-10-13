let rec count_Substrings (s : string) : int =
  let len = String.length s in
  let digit_sum (n : int) : int =
    if n = 0 then 0 else n mod 10 + digit_sum (n / 10)
  in
  let rec helper (i : int) (j : int) : int =
    if j = len then i else
    if digit_sum (int_of_string (String.sub s j 1)) = j - i + 1 then
      helper i (j + 1) + 1
    else
      helper (j + 1) (j + 1)
  in
  helper 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
