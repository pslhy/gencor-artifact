let rec reverse_vowels (str1 : string) : string = 
    let is_vowel c = 
        match Char.lowercase_ascii c with 
        | 'a' | 'e' | 'i' | 'o' | 'u' -> true 
        | _ -> false 
    in
    let rec helper s1 s2 =
        match s1 with
        | [] -> List.rev s2
        | h :: t ->
            if is_vowel h then
                helper t (h :: s2)
            else
                helper t (s2 @ [h])
    in
    let str_list = String.to_list str1 in
    let reversed_vowels = helper str_list [] in
    let rec replace_vowels s1 s2 =
        match s1 with
        | [] -> List.rev s2
        | h :: t ->
            if is_vowel h then
                replace_vowels t (List.hd reversed_vowels :: s2)
            else
                replace_vowels t (h :: s2)
    in
    let result = replace_vowels str_list [] in
    String.of_list result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
