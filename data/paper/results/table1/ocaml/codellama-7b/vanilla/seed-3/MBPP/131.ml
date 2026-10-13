let rec reverse_vowels (str1 : string) : string =
  if String.length str1 <= 1 then
    str1
  else
    match str1.[0] with
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' ->
        let rec helper (i : int) (j : int) (res : string) : string =
          if i >= j then
            res
          else
            match str1.[i] with
            | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' ->
                helper (i + 1) j (str1.[i] :: res)
            | _ ->
                helper i (j - 1) (str1.[j - 1] :: res)
        in
        helper 0 (String.length str1 - 1) []
        ^ reverse_vowels (String.sub str1 1 (String.length str1 - 1))
    | _ ->
        reverse_vowels (String.sub str1 1 (String.length str1 - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
