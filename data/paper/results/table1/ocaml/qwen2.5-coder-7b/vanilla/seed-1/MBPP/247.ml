let rec lps (str : string) : int = 
  let len = String.length str in
  let rec helper i j : int =
    if i > j then 0
    else if i = j then 1
    else if str.[i] = str.[j] then 2 + helper (i + 1) (j - 1)
    else max (helper (i + 1) j) (helper i (j - 1))
  in
  helper 0 (len - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
