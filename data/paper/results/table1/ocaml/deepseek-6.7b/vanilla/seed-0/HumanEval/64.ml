let rec vowels_count (s : string) : int =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
        if s = "" then 0
        else if List.mem (String.lowercase_ascii (String.sub s 0 1)) vowels then 1 + vowels_count (String.sub s 1 (String.length s - 1))
        else if s = String.uppercase_ascii s && String.length s > 1 && String.sub s (String.length s - 1) = "y" then 1
        else 0 + vowels_count (String.sub s 1 (String.length s - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
