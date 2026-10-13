let rec vowels_count (s : string) : int = 
    let is_vowel c = 
        match Char.lowercase_ascii c with
        | 'a' | 'e' | 'i' | 'o' | 'u' -> true
        | 'y' -> s.[String.length s - 1] = 'y' || s.[String.length s - 1] = 'Y'
        | _ -> false in
    let rec count acc s = 
        if String.length s = 0 then acc
        else if is_vowel s.[0] then count (acc + 1) (String.sub s 1 (String.length s - 1))
        else count acc (String.sub s 1 (String.length s - 1)) in
    count 0 s;;


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
