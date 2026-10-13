let rec reverse_vowels (str1 : string) : string =
  let len = String.length str1 in
  let rec helper lst idx revs =
    match lst with
    | [] -> (String.concat "" (List.rev revs), idx)
    | hd::tl ->
        if hd = 'a' || hd = 'e' || hd = 'i' || hd = 'o' || hd = 'u' || hd = 'A' || hd = 'E' || hd = 'I' || hd = 'O' || hd = 'U' then
          helper tl idx (List.rev_append (List.rev [hd]) revs)
        else
          helper tl (idx+1) (List.rev_append (List.rev [hd]) revs)
  in
  let (res, _) = helper (List.of_seq (String.to_seq str1)) 0 [] in
  res
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
