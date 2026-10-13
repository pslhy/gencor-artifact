
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
    let str_list = String.to_seq str1 |> Seq.fold_left (fun acc c -> c :: acc) [] in
    helper str_list []
    |> List.map string_of_int
    |> String.concat

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
