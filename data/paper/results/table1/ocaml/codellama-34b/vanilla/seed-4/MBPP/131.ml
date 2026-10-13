let rec reverse_vowels (str1 : string) : string = 
    let is_vowel char =
        char = 'a' || char = 'e' ||char = 'i' || char = 'o' || char = 'u'
    in
    let rec reverse_vowels_aux (str2 : string) (acc : string) : string =
        match str2 with
        | [] -> acc
        | hd :: tl when hd = 'y' -> hd :: tl
        | hd :: tl when is_vowel hd -> reverse_vowels_aux tl (hd :: acc)
        | hd :: tl -> hd :: reverse_vowels_aux tl acc
    in
    reverse_vowels_aux str1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
