let rec count_Substrings (s : string) : int =
  match s with
  | "" -> 0
  | x :: xs ->
    let digit = Char.code x - Char.code '0'
    let n = count_Substrings xs
    let ans = n + if digit = String.length s then 1 else 0 in
    ans


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
