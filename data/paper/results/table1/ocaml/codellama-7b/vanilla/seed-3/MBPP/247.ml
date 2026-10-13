let rec lps (str : string) : int =
  if String.length str <= 1 then
    String.length str
  else
    let rec lis (str : string) : int =
      if String.length str = 1 then
        1
      else
        let m = lis (String.sub str ~pos:1 ~len:(String.length str - 1)) in
        let n = lis (String.sub str ~pos:0 ~len:(String.length str - 1)) in
        1 + max m n
    in
    let m = lis (String.sub str ~pos:0 ~len:(String.length str - 1)) in
    let n = lis (String.sub str ~pos:1 ~len:(String.length str - 1)) in
    1 + max m n

let max_palindromic_subsequence (str : string) : int =
  lps str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
