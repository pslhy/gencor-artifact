let rec reverse_vowels (str1 : string) : string =
    let vowels = "aeiou" in
    let rec loop i j =
        if i < j then 
            let si = String.sub str1 i 1 in
            let sj = String.sub str1 j 1 in
            if String.contains vowels (String.lowercase_ascii si) &&
               String.contains vowels (String.lowercase_ascii sj) then
                let new_str = String.sub str1 0 i ^ sj ^ String.sub str1 (i+1) (j-i-1) ^ si ^ String.sub str1 (j+1) (String.length str1 - j -1) in
                loop (i+1) (j-1)
            else if not (String.contains vowels (String.lowercase_ascii si)) then
                loop i (j-1)
            else if not (String.contains vowels (String.lowercase_ascii sj)) then
                loop (i+1) j
            else
                str1
        else
            str1
    in
    loop 0 (String.length str1 - 1)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
