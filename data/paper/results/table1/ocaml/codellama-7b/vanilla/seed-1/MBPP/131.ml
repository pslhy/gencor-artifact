let rec reverse_vowels (str1 : string) : string =
    let vowels = ["a"; "e"; "i"; "o"; "u"; "y"] in
    let rec aux (i : int) (j : int) : string =
        if i = j then str1
        else
            let c1 = str1.[i] in
            let c2 = str1.[j] in
            if List.mem c1 vowels = false || List.mem c2 vowels = false then
                str1
            else
                aux (i + 1) (j - 1) ^ str1.[i] ^ str1.[j] ^ aux (i + 1) (j - 1)
    in
    aux 0 (String.length str1 - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
