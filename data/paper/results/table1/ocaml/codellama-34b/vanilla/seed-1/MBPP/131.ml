let rec reverse_vowels (str1 : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let length = String.length str1 in
    let rec aux (str2 : string) (i : int) : string =
        if i < 0 then str2
        else if List.exists (fun c -> c = String.get str2 i) vowels then
            aux (String.set str2 i (String.get str1 (length - i - 1))) (i - 1)
        else aux str2 (i - 1)
    in
    aux str1 (length - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
