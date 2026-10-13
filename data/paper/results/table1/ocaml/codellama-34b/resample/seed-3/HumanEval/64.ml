(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function vowels_count which takes a string representing *)
(*     a word as input and returns the number of vowels in the string. *)
(*     Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a *)
(*     vowel, but only when it is at the end of the given word. *)
(*     Example: *)
(*     >>> vowels_count "abcde" *)
(*     2 *)
(*     >>> vowels_count "ACEDY" *)
(*     3 *)
let rec vowels_count (s : string) : int =
    if s = "" then 0 else
    let h = s.[0] in
    let t = s.[1..(String.length s - 1)] in
    if h = 'a' || h = 'e' || h = 'i' || h = 'o' || h = 'u' then
        1 + vowels_count t
    else if h = 'y' && t = "" then
        1 + vowels_count t
    else
        vowels_count t

