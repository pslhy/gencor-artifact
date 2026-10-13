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
    let is_vowel (c : char) : bool = 
        match c with
        | 'a' | 'e' | 'i' | 'o' | 'u' -> true
        | 'y' -> s.[String.length s - 1] = 'y'
        | _ -> false 
    in
    s |> String.fold_left (fun acc c -> if is_vowel c then acc + 1 else acc) 0

