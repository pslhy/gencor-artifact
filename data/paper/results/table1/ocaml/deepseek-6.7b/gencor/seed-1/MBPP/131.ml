
let rec reverse_vowels (str1 : string) : string =
    let vowel = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let rec helper lst1 lst2 acc =
        match lst1, lst2 with
        | _, [] -> List.rev (List.rev_append acc lst1)
        | _, _ ->
            let x = List.hd lst1 and y = List.hd lst2 in
            if List.mem y vowel then
                helper (List.tl lst1) (List.tl lst2) (y :: (x :: acc))
            else
                helper (x :: (List.tl lst1)) (List.tl lst2) (y :: acc) in
    helper (List.of_seq (String.to_seq str1))
           (List.rev (List.of_seq (String.to_seq str1)))
           []
    |> String.of_seq

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
