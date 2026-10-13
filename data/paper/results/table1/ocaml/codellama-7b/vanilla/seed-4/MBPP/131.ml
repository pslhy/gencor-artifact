let rec reverse_vowels (str1 : string) : string = 
    let is_vowel (c : char) : bool = 
        match c with
        | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> true
        | _ -> false
    in
    let rec aux (i : int) (j : int) (shift : int) (result : string) = 
        if i >= j then result
        else if i < 0 || j >= String.length str1 then aux i (j - 1) shift result
        else if is_vowel str1.[i] then aux (i - 1) (j - 1) (shift + 1) (result + str1.[j + shift])
        else aux (i - 1) (j - 1) shift (result + str1.[i + shift])
    in
    aux (String.length str1 - 1) 0 0 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
