let rec vowels_count (s : string) : int = 
  let is_vowel c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> true
    | 'y' | 'Y' when s.[String.length s - 1] = c -> true
    | _ -> false
  in
  let rec count acc idx = 
    if idx >= String.length s then acc
    else 
      count (if is_vowel s.[idx] then acc + 1 else acc) (idx + 1)
  in
  count 0 0


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
